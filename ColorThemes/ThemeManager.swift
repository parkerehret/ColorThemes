//
//  ThemeManager.swift
//  ColorThemes
//
//  Created by Parker Ehret on 7/10/23.
//

import Foundation
import SwiftUI

class ThemeManager: ObservableObject {
    @Published var currentTheme: ColorTheme
    var currentThemeName: ColorThemeName
    
    init(theme: ColorThemeName) {
        self.currentThemeName = theme
        switch theme {
            case .everyYearTheme:
                self.currentTheme = .everyYearTheme
            case .instagramTheme:
                self.currentTheme = .instagramTheme
            case .figmaTheme:
                self.currentTheme = .figmaTheme
        }
    }
    
    func changeTheme(theme: ColorThemeName) {
        currentThemeName = theme
        switch theme {
            case .everyYearTheme:
                self.currentTheme = .everyYearTheme
            case .instagramTheme:
                self.currentTheme = .instagramTheme
            case .figmaTheme:
                self.currentTheme = .figmaTheme
        }
    }
}
