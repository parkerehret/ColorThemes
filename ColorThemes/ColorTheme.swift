//
//  ColorTheme.swift
//  ColorThemes
//
//  Created by Parker Ehret on 7/10/23.
//

import Foundation
import SwiftUI

struct ColorTheme {
    var color1: Color
    var color2: Color
    var color3: Color
    var color4: Color

    static let everyYearTheme = ColorTheme(color1: Color(red: 0.97, green: 0.145, blue: 0.52),
                                   color2: Color(red: 0.27, green: 0.38, blue: 0.93),
                                   color3: Color(red: 0.12, green: 0.73, blue: 0.93),
                                   color4: Color(red: 0.18, green: 0.86, blue: 0.82))
    static let instagramTheme = ColorTheme(color1: Color(red: 0.25, green: 0.36, blue: 0.90),
                                   color2: Color(red: 0.51, green: 0.23, blue: 0.70),
                                   color3: Color(red: 0.88, green: 0.19, blue: 0.42),
                                   color4: Color(red: 0.96, green: 0.35, blue: 0.25))
    static let figmaTheme = ColorTheme(color1: Color(red: 0.95, green: 0.30, blue: 0.12),
                                   color2: Color(red: 0.64, green: 0.35, blue: 1.00),
                                   color3: Color(red: 0.12, green: 0.73, blue: 0.93),
                                   color4: Color(red: 0.04, green: 0.81, blue: 0.51))
}

enum ColorThemeName: String, CaseIterable {
    case everyYearTheme
    case instagramTheme
    case figmaTheme
}

