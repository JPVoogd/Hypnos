//
//  DataSource.swift
//  SleepMusic
//
//  Created by Jeroen Voogd on 14/05/2023.
//

import Foundation
import SwiftUI

class ThemeModel: ObservableObject {
    @AppStorage("selectedTheme") var selectedThemeAS = 9 {
        didSet {
            updateTheme()
        }
    }

    init() {
        updateTheme()
    }

    @Published var selectedTheme: AccentColor = AccentColor.accentColor[0]

    func updateTheme() {
        selectedTheme = AccentColor.accentColor[selectedThemeAS]
    }
}
