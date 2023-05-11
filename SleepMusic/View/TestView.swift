//
//  TestView.swift
//  SleepMusic
//
//  Created by Jeroen Voogd on 10/05/2023.
//

import SwiftUI

struct TestView: View {
    init(){
        //set nav bar style
        let coloredAppearance = UINavigationBarAppearance()

        coloredAppearance.configureWithTransparentBackground()
        //set background color
        coloredAppearance.backgroundColor = UIColor(red: 0.09, green: 0.09, blue: 0.09, alpha: 1)
        coloredAppearance.shadowColor = UIColor.gray
        //set title color
        coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]

        //make the appearance work
        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().compactAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
        UINavigationBar.appearance().tintColor = UIColor.white

        //set backbutton and its color
        let image = UIImage(systemName: "chevron.backward")?.withTintColor(UIColor.white, renderingMode: .alwaysOriginal)
        coloredAppearance.setBackIndicatorImage(image, transitionMaskImage: image)
    }

    var body: some View {
        NavigationStack {
            VStack {
                ScrollView(showsIndicators: false) {
                    Text("Meditation Sounds")
                        .font(.title)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 20)
                        .padding(.top, 20)
                        .padding(.bottom, -5)
                    ForEach(0 ..< Sounds.sounds.count, id: \.self) { index in
                        ButtonsView(index: index)
                            .padding(.horizontal, 20)
                    }
                    Text("Nature Sounds")
                        .font(.title)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 20)
                        .padding(.top, 20)
                        .padding(.bottom, -5)
                    ForEach(0 ..< Sounds.meditation.count, id: \.self) { index in
                        NatureButtonView(index: index)
                            .padding(.horizontal, 20)
                    }
                }
            }
            .navigationTitle("Tranquil")
            .navigationBarTitleDisplayMode(.automatic)
            .background(Color(red: 24/255, green: 23/255, blue: 22/255))
            .toolbar {
                Button(action: {}) {
                    Text(Image(systemName: "gearshape"))
                }
            }
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
