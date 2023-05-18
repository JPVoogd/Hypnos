//
//  TestView.swift
//  SleepMusic
//
//  Created by Jeroen Voogd on 10/05/2023.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView(showsIndicators: false) {
                    Text("Meditation Sounds")
                        .font(Font.custom("MedievalSharp", size: 75))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 25)
                        .padding(.top, 25)
                        .padding(.bottom, -7)
                    ForEach(0 ..< Sounds.meditation.count, id: \.self) { index in
                        ButtonsView(index: index)
                            .padding(.horizontal, 20)
                    }

                    Text("Nature Sounds")
                        .font(Font.custom("Parchment", size: 100))
                        .foregroundColor(.white)

                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 25)
                        .padding(.top, 25)
                        .padding(.bottom, -7)
                    ForEach(0 ..< Sounds.nature.count, id: \.self) { index in
                        NatureButtonView(index: index)
                            .padding(.horizontal, 20)
                    }

                }
            }
            .navigationTitle("Tranquil")
            .navigationBarTitleDisplayMode(.automatic)
            .background(Color(red: 24/255, green: 23/255, blue: 22/255))
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
            .environmentObject(AudioManager())
    }
}
