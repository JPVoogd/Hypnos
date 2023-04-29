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

    @State private var value: Double = 0.0
    @State private var isEditing: Bool = false
    @State private var showDetails = false
    let index: Int
    let sliderTimer = Timer
        .publish(every: 0.5, on: .main, in: .common)
        .autoconnect()

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
                .background(.thinMaterial)
                .opacity(0.5)
                .ignoresSafeArea()

            VStack(spacing: 32) {

                //MARK: Dismiss Button
                HStack {
                    Button {
                        audioManager.stop()
                        dismiss()
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .font(.system(size: 36))
                            .foregroundColor(.white)
                    }
                    Spacer()
                }

                //MARK: Title
                Text(Sounds.sounds[index].title)
                    .font(.title)
                    .foregroundColor(.white)

                Spacer()

                //MARK: Playback
                if let player = audioManager.player {
//                    VStack(spacing: 5) {
//                        //MARK: Playback Timeline
//                        Slider(value: $value, in: 0...player.duration) { editing in
//
//                            print("editing", editing)
//                            isEditing = editing
//
//                            if !editing {
//                                player.currentTime = value
//                            }
//                        }
//                        .accentColor(.white)
//
//                        //MARK: Playback Time
//                        HStack {
//                            Text(DateComponentsFormatter.positional.string(from: player.currentTime) ?? "0:00")
//
//                            Spacer()
//
//                            Text(DateComponentsFormatter.positional.string(from: player.duration - player.currentTime) ?? "0:00")
//                        }
//                        .font(.caption)
//                        .foregroundColor(.white)
//                    }

                    //MARK: CountdownTimer
                    HStack {
                        if timerModel.isActive == true {
                            Text("\(timerModel.time)")
                                .font(.body)
                                .foregroundColor(.white)
                        } else {
                            Text("")
                        }
                    }

                    HStack {
                        //MARK: Repeat Button
                        let color: Color = audioManager.isLooping ? .teal : .white
                        PlaybackControlButton(systemName: "repeat", color: color) {
                            audioManager.toggleLoop()
                        }

                        Spacer()

                        //MARK: Backward Button
//                        PlaybackControlButton(systemName: "gobackward.10") {
//                            player.currentTime -= 10
//                        }

//                        Spacer()

                        //MARK: Play/Pause Button
                        PlaybackControlButton(systemName: audioManager.isPlaying ? "pause.circle.fill" : "play.circle.fill", fontSize: 44) {
                            audioManager.playPause()
                        }

                        Spacer()

                        //MARK: Forward Button
//                        PlaybackControlButton(systemName: "goforward.10") {
//                            player.currentTime += 10
//                        }

//                        Spacer()

                        //MARK: Stop Button
                            PlaybackControlButton(systemName: "timer") {
                                showDetails.toggle()
                            }
                                .confirmationDialog("Select time", isPresented: $showDetails) {
                                    Button("1:00") {
                                        timerModel.minutes = 1
                                        timerModel.start(minutes: timerModel.minutes) }
                                    Button("15:00") {
                                        timerModel.minutes = 15
                                        timerModel.start(minutes: timerModel.minutes) }
                                    Button("30:00") {
                                        timerModel.minutes = 30
                                        timerModel.start(minutes: timerModel.minutes) }
                                    Button("45:00") {
                                        timerModel.minutes = 45
                                        timerModel.start(minutes: timerModel.minutes) }
                                    Button("Cancel", role: .cancel) { }
                                } message: {
                                    Text("Select your time")
                                }

                    }
                }
            }
            .padding(20)
        }
        .onAppear{
            audioManager.startPlayer(track: Sounds.sounds[index].track)
        }
        .onReceive(sliderTimer) { _ in
            guard let player = audioManager.player, !isEditing else { return }
            value = player.currentTime
        }
        .onReceive(countdownTimer) { _ in
            let stop = timerModel.updateCountdown()
            if stop {
                audioManager.stop()
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
