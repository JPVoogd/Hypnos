//
//  AppIconView.swift
//  SleepMusic
//
//  Created by Jeroen Voogd on 12/05/2023.
//

import SwiftUI

struct AppIconView: View {
    var body: some View {
        NavigationStack {
            Text("Hello, App Icon!")
        }.navigationTitle("App Icon")
    }
}

struct AppIconView_Previews: PreviewProvider {
    static var previews: some View {
        AppIconView()
    }
}
