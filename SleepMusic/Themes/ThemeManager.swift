//
//  ThemeManager.swift
//  SleepMusic
//
//  Created by Jeroen Voogd on 14/05/2023.
//

import Foundation

enum ThemeManager {
    static let themes: [Theme] = [Theme1(), Theme2(), Theme3(), Theme4(), Theme5(), Theme6(), Theme7(), Theme8(), Theme9(), Theme10(), Theme11(), Theme12(), Theme13()]

    static func getTheme(_ theme: Int) -> Theme {
        Self.themes[theme]
    }
}
