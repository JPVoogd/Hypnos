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
                Label("", systemImage: "play.fill")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(.vertical, 10)
                    .frame(maxWidth: .infinity)
                    .frame(height: UIScreen.main.bounds.height / 4)
                    .background(Image(Sounds.meditation[index].smallImage)
                        .resizable()
                        .scaledToFill())
                    .cornerRadius(20)
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
