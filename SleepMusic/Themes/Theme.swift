//
//  Theme.swift
//  SleepMusic
//
//  Created by Jeroen Voogd on 14/05/2023.
//

import Foundation
import SwiftUI

protocol Theme {
    var accentColor: Color { get }
    var textColor: UIColor { get }
    var themeName: String { get }
}
