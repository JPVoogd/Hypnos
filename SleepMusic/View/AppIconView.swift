//
//  AppIconView.swift
//  SleepMusic
//
//  Created by Jeroen Voogd on 12/05/2023.
//

import SwiftUI

struct AppIconView: View {
    @StateObject var viewModel = ChangeAppIconViewModel()
    @EnvironmentObject var theme: ThemeModel

    var body: some View {
        NavigationStack {
            List {
                Section {
                    ForEach(ChangeAppIconViewModel.AppIcon.allCases) { appIcon in
                            Button {
                                viewModel.updateAppIcon(to: appIcon)
                            } label: {
                                Label {
                                    Text(appIcon.description)
                                        .foregroundColor(.white)
                                        .padding(.horizontal, 10)
                                    Spacer()
                                    if viewModel.selectedAppIcon == appIcon {
                                        Image(systemName: "checkmark")
                                            .foregroundColor(theme.selectedTheme.accentColor)
                                    }
                                } icon: {
                                    Image(uiImage: appIcon.preview)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 60, height: 60)
                                        .cornerRadius(12)
                                }
                                .padding(.horizontal, 10)
                            }
                    }
                }
            }
        }
    }
}
struct AppIconView_Previews: PreviewProvider {
    static var previews: some View {
        AppIconView()
            .environmentObject(ThemeModel())
    }
}

//                    VStack(spacing: 11) {
//                        ForEach(ChangeAppIconViewModel.AppIcon.allCases) { appIcon in
//                            VStack {
//                                HStack(spacing: 16) {
//                                    Image(uiImage: appIcon.preview)
//                                        .resizable()
//                                        .aspectRatio(contentMode: .fit)
//                                        .frame(width: 60, height: 60)
//                                        .cornerRadius(12)
//                                    Text(appIcon.description)
//                                    Spacer()
//                                    if viewModel.selectedAppIcon == appIcon{
//                                        Image(systemName: "checkmark")
//                                            .foregroundColor(theme.selectedTheme.accentColor)
//                                    }
//                                }
//                                .padding(EdgeInsets(top: 14, leading: 16, bottom: 14, trailing: 16))
//                                .cornerRadius(20)
//                                .onTapGesture {
//                                    withAnimation {
//                                        viewModel.updateAppIcon(to: appIcon)
//                                    }
//                                }
//                            }
//
//                        }
//                    }
