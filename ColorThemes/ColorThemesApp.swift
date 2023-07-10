//
//  ColorThemesApp.swift
//  ColorThemes
//
//  Created by Parker Ehret on 7/10/23.
//

import SwiftUI

@main
struct ColorThemesApp: App {
    @StateObject private var themeManager = ThemeManager(theme: .everyYearTheme)

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(themeManager)
        }
    }
}

