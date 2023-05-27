//
//  Theme.swift
//  SleepMusic
//
//  Created by Jeroen Voogd on 14/05/2023.
//

import Foundation
import SwiftUI

struct AccentColor {
    let title: String
    let textColor: UIColor
    let accentColor: Color
}

extension AccentColor {
    static let accentColor = [
        AccentColor(title: "Blue", textColor: UIColor(named: "1-AccentColor")!, accentColor: Color("1-AccentColor")),
        AccentColor(title: "Brown", textColor: UIColor(named: "2-AccentColor")!, accentColor: Color("2-AccentColor")),
        AccentColor(title: "Cyan", textColor: UIColor(named: "3-AccentColor")!, accentColor: Color("3-AccentColor")),
        AccentColor(title: "Gray", textColor: UIColor(named: "4-AccentColor")!, accentColor: Color("4-AccentColor")),
        AccentColor(title: "Green", textColor: UIColor(named: "5-AccentColor")!, accentColor: Color("5-AccentColor")),
        AccentColor(title: "Indigo", textColor: UIColor(named: "6-AccentColor")!, accentColor: Color("6-AccentColor")),
        AccentColor(title: "Mint", textColor: UIColor(named: "7-AccentColor")!, accentColor: Color("7-AccentColor")),
        AccentColor(title: "Orange", textColor: UIColor(named: "8-AccentColor")!, accentColor: Color("8-AccentColor")),
        AccentColor(title: "Pink", textColor: UIColor(named: "9-AccentColor")!, accentColor: Color("9-AccentColor")),
        AccentColor(title: "Purple", textColor: UIColor(named: "10-AccentColor")!, accentColor: Color("10-AccentColor")),
        AccentColor(title: "Red", textColor: UIColor(named: "11-AccentColor")!, accentColor: Color("11-AccentColor")),
        AccentColor(title: "Teal", textColor: UIColor(named: "12-AccentColor")!, accentColor: Color("12-AccentColor")),
        AccentColor(title: "Yellow", textColor: UIColor(named: "13-AccentColor")!, accentColor: Color("13-AccentColor")),
    ]
}
