//
//  ThemeView.swift
//  SleepMusic
//
//  Created by Jeroen Voogd on 12/05/2023.
//

import SwiftUI

struct ThemeView: View {
    var body: some View {
        NavigationStack {
            Text("Hello, Theme!")
        }.navigationTitle("Theme")
    }
}

struct ThemeView_Previews: PreviewProvider {
    static var previews: some View {
        ThemeView()
    }
}
