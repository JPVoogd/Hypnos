//
//  ThemeView.swift
//  SleepMusic
//
//  Created by Jeroen Voogd on 12/05/2023.
//

import SwiftUI

struct ThemeView: View {
    @EnvironmentObject var theme: ThemeModel

    var body: some View {
        NavigationStack {
            List {
                Section {
                    ForEach(0 ..< AccentColor.accentColor.count, id: \.self) { index in
                        Button {
                            theme.selectedThemeAS = index
                        } label: {
                            Label {
                                Text(AccentColor.accentColor[index].title)
                                    .foregroundColor(.white)
                                Spacer()
                                if theme.selectedThemeAS == index {
                                    Image(systemName: "checkmark")
                                        .foregroundColor(theme.selectedTheme.accentColor)
                                }
                            } icon: {
                                Circle()
                                    .fill(AccentColor.accentColor[index].accentColor)
                                    .frame(width: 25, height: 25)
                            }
                        }
                    }
                }
            }
        }.navigationTitle("Accent Color")
    }
}

struct ThemeView_Previews: PreviewProvider {
    static var previews: some View {
        ThemeView()
            .environmentObject(ThemeModel())
    }
}
