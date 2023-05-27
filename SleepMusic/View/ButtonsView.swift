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
 
            Button {
                showPlayer = true
            } label: {
                Image(Sounds.sounds[index].smallImage)
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: .infinity)
                    .frame(height: UIScreen.main.bounds.height / 4)
                    .cornerRadius(20)
                    .overlay(
                        Text(Sounds.sounds[index].title)
                            .font(Font.custom("MedievalSharp", size: 50))
                            .foregroundColor(.white)
                            .shadow(color: .black, radius: 10)
                    )
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
