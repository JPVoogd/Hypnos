//
//  ContentView.swift
//  SleepMusic
//
//  Created by Jeroen Voogd on 23/04/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var showingSettings = false
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
                }
            }
            .navigationTitle("Tranquil")
            .navigationBarTitleDisplayMode(.automatic)
            .background(Color(red: 24/255, green: 23/255, blue: 22/255))
            .toolbar {
                ToolbarItem(placement: .navigation) {
                    Button(action: {
                        showingSettings = true
                    }) {
                        Text(Image(systemName: "gearshape"))
                    }
                    .sheet(isPresented: $showingSettings) {
                        NavigationView {
                            SettingsView()
                                .toolbar {
                                    ToolbarItem(placement: .navigation) {
                                        Button(action: {
                                            showingSettings = false
                                        }) {
                                            Text("Done").fontWeight(.semibold)
                                        }
                                    }
                                }
                                .navigationTitle("Settings")
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(AudioManager())
    }
}
