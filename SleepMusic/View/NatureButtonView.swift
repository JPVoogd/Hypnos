//
//  NatureButtonView.swift
//  SleepMusic
//
//  Created by Jeroen Voogd on 10/05/2023.
//

import SwiftUI

struct NatureButtonView: View {
    let index: Int
    @State private var showPlayer = false
    
    var body: some View {

        Button {
            showPlayer = true
        } label: {
            Image(Sounds.nature[index].smallImage)
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity)
                .frame(height: UIScreen.main.bounds.height / 4)
                .cornerRadius(20)
                .overlay(
                    Text(Sounds.nature[index].title)
                        .font(Font.custom("MedievalSharp", size: 75))
                        .foregroundColor(.white)
                        .shadow(color: .black, radius: 5)
                )
            //            Text(Sounds.nature[index].title)
            //                .font(.largeTitle)
            //                .foregroundColor(.white)
            //                .frame(maxWidth: .infinity)
            //                .frame(height: UIScreen.main.bounds.height / 4)
            //                .background(Image(Sounds.nature[index].smallImage)
            //                    .resizable()
            //                    .scaledToFill())
            //                .cornerRadius(20)
        }
        .fullScreenCover(isPresented: $showPlayer) {
            PlayerView(index: index)
        }
    }
}

struct NatureButtonView_Previews: PreviewProvider {
    static var previews: some View {
        NatureButtonView(index: 0)
    }
}
