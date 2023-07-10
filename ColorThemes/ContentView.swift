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
            HStack {
                ZStack {
                    Rectangle()
                        .fill(themeManager.currentTheme.color1.opacity(1.0))
                        .frame(width: 44, height: 44)
                        .cornerRadius(18)
                    
                    Text("1")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                }
                .padding(.leading, 16)
                .padding(.vertical, 16)
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Birthday")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundColor(themeManager.currentTheme.color1.opacity(1.0))
                    }
                    HStack {
                        Text("This event will happen this year")
                            .font(.footnote)
                            .fontWeight(.medium)
                            .foregroundColor(themeManager.currentTheme.color1.opacity(0.5))
                    }
                    .padding(.top, -8)
                }
                .padding(.leading, 8)
                Spacer()
            }
            .background(themeManager.currentTheme.color1.opacity(0.05))
            .cornerRadius(28)
            .padding(.horizontal, 16)
            
            HStack {
                ZStack {
                    Rectangle()
                        .fill(themeManager.currentTheme.color2.opacity(1.0))
                        .frame(width: 44, height: 44)
                        .cornerRadius(18)
                    
                    Text("2")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                }
                .padding(.leading, 16)
                .padding(.vertical, 16)
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Holiday")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundColor(themeManager.currentTheme.color2.opacity(1.0))
                    }
                    HStack {
                        Text("This event will happen this year")
                            .font(.footnote)
                            .fontWeight(.medium)
                            .foregroundColor(themeManager.currentTheme.color2.opacity(0.5))
                    }
                    .padding(.top, -8)
                }
                .padding(.leading, 8)
                Spacer()
            }
            .background(themeManager.currentTheme.color2.opacity(0.05))
            .cornerRadius(28)
            .padding(.horizontal, 16)
            
            HStack {
                ZStack {
                    Rectangle()
                        .fill(themeManager.currentTheme.color3.opacity(1.0))
                        .frame(width: 44, height: 44)
                        .cornerRadius(18)
                    
                    Text("3")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                }
                .padding(.leading, 16)
                .padding(.vertical, 16)
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Anniversary")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundColor(themeManager.currentTheme.color3.opacity(1.0))
                    }
                    HStack {
                        Text("This event will happen this year")
                            .font(.footnote)
                            .fontWeight(.medium)
                            .foregroundColor(themeManager.currentTheme.color3.opacity(0.5))
                    }
                    .padding(.top, -8)
                }
                .padding(.leading, 8)
                Spacer()
            }
            .background(themeManager.currentTheme.color3.opacity(0.05))
            .cornerRadius(28)
            .padding(.horizontal, 16)
            
            HStack {
                ZStack {
                    Rectangle()
                        .fill(themeManager.currentTheme.color4.opacity(1.0))
                        .frame(width: 44, height: 44)
                        .cornerRadius(18)
                    
                    Text("4")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                }
                .padding(.leading, 16)
                .padding(.vertical, 16)
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Custom Event")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundColor(themeManager.currentTheme.color4.opacity(1.0))
                    }
                    HStack {
                        Text("This event will happen this year")
                            .font(.footnote)
                            .fontWeight(.medium)
                            .foregroundColor(themeManager.currentTheme.color4.opacity(0.5))
                    }
                    .padding(.top, -8)
                }
                .padding(.leading, 8)
                Spacer()
            }
            .background(themeManager.currentTheme.color4.opacity(0.05))
            .cornerRadius(28)
            .padding(.horizontal, 16)
            

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
