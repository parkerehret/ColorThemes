//
//  ContentView.swift
//  ColorThemes
//
//  Created by Parker Ehret on 7/10/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var themeManager: ThemeManager

    var body: some View {
        VStack {
            Rectangle().fill(themeManager.currentTheme.color1)
                .cornerRadius(18)
                .padding(.horizontal, 16)
                .padding(.bottom, 16)
                .frame(height: 76)
            Rectangle().fill(themeManager.currentTheme.color2)
                .cornerRadius(18)
                .padding(.horizontal, 16)
                .padding(.bottom, 16)
                .frame(height: 76)
            Rectangle().fill(themeManager.currentTheme.color3)
                .cornerRadius(18)
                .padding(.horizontal, 16)
                .padding(.bottom, 16)
                .frame(height: 76)
            Rectangle().fill(themeManager.currentTheme.color4)
                .cornerRadius(18)
                .padding(.horizontal, 16)
                .padding(.bottom, 16)
                .frame(height: 76)
            ForEach(ColorThemeName.allCases, id: \.self) { theme in
                Button(theme.rawValue) {
                    themeManager.changeTheme(theme: theme)
                }
                .foregroundColor(.blue)
                .cornerRadius(10)
                .cornerRadius(18)
                .padding(16)
                .padding(.top, 40)
                .frame(height: 40)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ThemeManager(theme: .everyYearTheme))
    }
}
