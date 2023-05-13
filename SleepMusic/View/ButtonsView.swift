//
//  ButtonsView.swift
//  SleepMusic
//
//  Created by Jeroen Voogd on 23/04/2023.
//

import SwiftUI

struct ButtonsView: View {
    let index: Int
    @State private var showPlayer = false
    
    var body: some View {
        //MARK: Thunder button
        ZStack {
            Button {
                showPlayer = true
            } label: {
//                Label(Sounds.sounds[index].title, systemImage: "play.fill")
//                    .font(.largeTitle)
//                    .foregroundColor(.white)
//                    .padding(.vertical, 10)
//                    .frame(maxWidth: .infinity)
//                    .frame(height: UIScreen.main.bounds.height / 4)
//                    .background(Image(Sounds.sounds[index].smallImage)
//                        .resizable()
//                        .scaledToFill())
//                    .cornerRadius(20)
                Text(Sounds.sounds[index].title)
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
//            Text(Sounds.sounds[index].title)
//                .frame(
//                    maxWidth: 320,
//                    maxHeight: 195,
//                    alignment: .topLeading)
//                .font(.title)
//                .foregroundColor(.white)
        }


        .fullScreenCover(isPresented: $showPlayer) {
            PlayerView(index: index)
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsView(index: 0)
    }
}
