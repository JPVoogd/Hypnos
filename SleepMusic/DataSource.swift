//
//  DataSource.swift
//  SleepMusic
//
//  Created by Jeroen Voogd on 14/05/2023.
//

import Foundation
import SwiftUI

class DataSource: ObservableObject {
    @AppStorage("selectedTheme") var selectedThemeAS = 1 {
        didSet {
            updateTheme()
        }
    }

    init() {
        updateTheme()
    }

    @Published var selectedTheme: Theme = Theme3()

    func updateTheme() {
        selectedTheme = ThemeManager.getTheme(selectedThemeAS)
    }
}
