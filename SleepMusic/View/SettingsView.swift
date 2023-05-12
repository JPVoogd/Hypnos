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
                            Label("Support Guide", systemImage: "bookmark")
                        }
                        NavigationLink(destination: ContactView()) {
                            Label("Contact", systemImage: "testtube.2")
                        }
                        NavigationLink(destination: AppRateView()) {
                            Label("Rate in App Store", systemImage: "bookmark")
                        }
                        NavigationLink(destination: Shareview()) {
                            Label("Share Tranquil", systemImage: "testtube.2")
                        }
                        NavigationLink(destination: Privacyview()) {
                            Label("Privacy Policy", systemImage: "testtube.2")
                        }
                        NavigationLink(destination: AboutView()) {
                            Label("About", systemImage: "testtube.2")
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
