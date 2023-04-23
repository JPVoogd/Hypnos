//
//  ButtonsView.swift
//  SleepMusic
//
//  Created by Jeroen Voogd on 23/04/2023.
//

import SwiftUI

struct ButtonsView: View {
    let index: Int
    @State private var showMeditation = false
    @State private var showFire = false
    @State private var showRain = false
    @State private var showThunder = false
    @State private var showBeach = false
    
    
    var body: some View {
        //MARK: Thunder button
        Button {
            if Sounds.sounds[index].view == 0 {
                showMeditation = true
            } else if Sounds.sounds[index].view == 1 {
                showFire = true
            } else if Sounds.sounds[index].view == 2 {
                showRain = true
            } else if Sounds.sounds[index].view == 3 {
                showThunder = true
            } else if Sounds.sounds[index].view == 4 {
                showBeach = true
            }
            
        } label: {
            Label("", systemImage: "play.fill")
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding(.vertical, 10)
                .frame(maxWidth: .infinity)
                .frame(height: UIScreen.main.bounds.height / 4)
                .background(Image(Sounds.sounds[index].smallImage)
                    .resizable()
                    .scaledToFill())
                .cornerRadius(20)
        }
        .fullScreenCover(isPresented: $showMeditation) {
            MeditationView()
        }
        .fullScreenCover(isPresented: $showFire) {
            FireView()
        }
        .fullScreenCover(isPresented: $showRain) {
            RainView()
        }
        .fullScreenCover(isPresented: $showThunder) {
            ThunderView()
        }
        .fullScreenCover(isPresented: $showBeach) {
            BeachView()
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsView(index: 0)
    }
}
