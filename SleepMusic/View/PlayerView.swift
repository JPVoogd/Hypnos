//
//  PlayerView.swift
//  SleepMusic
//
//  Created by Jeroen Voogd on 23/04/2023.
//

import SwiftUI

struct PlayerView: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var audioManager: AudioManager
    @StateObject private var timerModel = TimerModel()
    @State private var showDetails = false
    let index: Int

    let countdownTimer = Timer
        .publish(every: 1, on: .main, in: .common)
        .autoconnect()

    var body: some View {
        ZStack {
            //MARK: Background Image
            Image(Sounds.sounds[index].largeImage)
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width)
                .ignoresSafeArea()

            //MARK: Blur View
            Rectangle()
                .background(.regularMaterial)
                .opacity(0.6)
                .ignoresSafeArea()

            VStack(spacing: 32) {

                //MARK: Dismiss Button
                HStack {
                    //MARK: Title
                    Text(Sounds.sounds[index].title)
                        .font(.title)
                        .foregroundColor(.white)
                    Spacer()
                    Button {
                        audioManager.stop()
                        dismiss()
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                    }
                }

                Spacer()

                //MARK: CountdownTimer
                HStack {
                    if timerModel.isActive {
                        Text("\(timerModel.time)")
                            .font(.title3)
                            .foregroundColor(.white)
                    }
                }

                HStack {
                    //MARK: Airplay Button
                    AirPlayView()
                        .frame(width: 50, height: 50)

                    Spacer()

                    //MARK: Play/Pause Button
                    PlaybackControlButton(systemName: audioManager.isPlaying ? "pause.circle.fill" : "play.circle.fill", fontSize: 44) {
                        audioManager.playPause()
                    }

                    Spacer()

                    //MARK: Timer Button
                    let timerColor: Color = timerModel.isActive ? .purple : .white
                    PlaybackControlButton(systemName: "timer", color: timerColor) {
                        showDetails.toggle()
                    }
                    .frame(width: 50, height: 50)
                    .confirmationDialog("Select time", isPresented: $showDetails) {
                        Button("15:00") {
                            timerModel.minutes = 15
                            timerModel.start(minutes: timerModel.minutes) }
                        Button("30:00") {
                            timerModel.minutes = 30
                            timerModel.start(minutes: timerModel.minutes) }
                        Button("45:00") {
                            timerModel.minutes = 45
                            timerModel.start(minutes: timerModel.minutes) }
                        Button("60:00") {
                            timerModel.minutes = 60
                            timerModel.start(minutes: timerModel.minutes) }
                        Button("Cancel", role: .cancel) { }
                    } message: {
                        Text("Select your time")
                    }
                }
            }
            .padding(20)
        }
        .onAppear{
            audioManager.startPlayer(track: Sounds.sounds[index].track)
            audioManager.player?.numberOfLoops = -1
            audioManager.isLooping = true
        }
        .onReceive(countdownTimer) { _ in
            let stop = timerModel.updateCountdown()
            if stop {
                audioManager.fadeOut()
                dismiss()
            }
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView(index: 0)
            .environmentObject(AudioManager())
    }
}
