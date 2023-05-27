//
//  SleepMusicApp.swift
//  SleepMusic
//
//  Created by Jeroen Voogd on 23/04/2023.
//

import SwiftUI

@main
struct SleepMusicApp: App {
    @StateObject var audioManager = AudioManager()
    @StateObject var viewModel = ChangeAppIconViewModel()

    init(){
        //set nav bar style
        let coloredAppearance = UINavigationBarAppearance()

        coloredAppearance.configureWithTransparentBackground()
        //set background color
        coloredAppearance.backgroundColor = UIColor(red: 0.09, green: 0.09, blue: 0.09, alpha: 1)
        coloredAppearance.shadowColor = UIColor.purple
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

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(AudioManager())
                .environmentObject(ThemeModel())
        }
    }
}
