//
//  ContentView.swift
//  SleepMusic
//
//  Created by Jeroen Voogd on 23/04/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            ZStack {
                Color(red: 24/255, green: 23/255, blue: 22/255)
                VStack {
                    Text("Tranquil")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding(.top, 50.0)
                    ScrollView(showsIndicators: false) {
                        ForEach(0 ..< Sounds.sounds.count, id: \.self) { index in
                            ButtonsView(index: index)
                        }
                    }
                }
                .padding(20)
            }
            .ignoresSafeArea()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(AudioManager())
    }
}
