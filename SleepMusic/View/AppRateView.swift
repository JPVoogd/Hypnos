//
//  AppRateView.swift
//  SleepMusic
//
//  Created by Jeroen Voogd on 12/05/2023.
//

import SwiftUI

struct AppRateView: View {
    var body: some View {
        NavigationStack {
            Text("Hello, Rate in App Store!")
        }.navigationTitle("Rate in App Store")
    }
}

struct AppRateView_Previews: PreviewProvider {
    static var previews: some View {
        AppRateView()
    }
}
