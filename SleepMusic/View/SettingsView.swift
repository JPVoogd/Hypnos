//
//  SettingsView.swift
//  SleepMusic
//
//  Created by Jeroen Voogd on 11/05/2023.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        VStack {
                List {
                    Section {
                        NavigationLink(destination: ThemeView()) {
                            Label("Theme", systemImage: "theatermask.and.paintbrush")
                        }
                        NavigationLink(destination: AppIconView()) {
                            Label("App Icons", systemImage: "app")
                        }
                    } header: {
                        Text("Appearance")
                    }
                    Section {
                        NavigationLink(destination: AnalyticsView()) {
                            Label("Analytics", systemImage: "bookmark")
                        }
                        NavigationLink(destination: ExperimentalView()) {
                            Label("Experimental", systemImage: "testtube.2")
                        }
                    } header: {
                        Text("Advanced")
                    }
                    Section {
                        NavigationLink(destination: ContactView()) {
                            Label("Support Guide", systemImage: "questionmark.bubble.fill")
                        }
                        NavigationLink(destination: ContactView()) {
                            Label("Contact", systemImage: "bubble.left.fill")
                        }
                        NavigationLink(destination: AppRateView()) {
                            Label("Rate in App Store", systemImage: "star.bubble.fill")
                        }
                        NavigationLink(destination: Shareview()) {
                            Label("Share Tranquil", systemImage: "square.and.arrow.up")
                        }
                        NavigationLink(destination: Privacyview()) {
                            Label("Privacy Policy", systemImage: "doc.plaintext.fill")
                        }
                        NavigationLink(destination: AboutView()) {
                            Label("About", systemImage: "person.crop.circle")
                        }
                    } header: {
                        Text("Support")
                    }
                } .listStyle(InsetGroupedListStyle())
        }

    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
