//
//  AppIconView.swift
//  SleepMusic
//
//  Created by Jeroen Voogd on 12/05/2023.
//

import SwiftUI

struct AppIconView: View {
    @StateObject var viewModel = ChangeAppIconViewModel()
    @EnvironmentObject var dataSource: DataSource

    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    VStack(spacing: 11) {
                        ForEach(ChangeAppIconViewModel.AppIcon.allCases) { appIcon in
                            HStack(spacing: 16) {
                                Image(uiImage: appIcon.preview)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 60, height: 60)
                                    .cornerRadius(12)
                                Text(appIcon.description)
                                Spacer()
//                                CheckboxView(isSelected: viewModel.selectedAppIcon == appIcon)
                                Image(systemName: "checkmark")
                                    .foregroundColor(dataSource.selectedTheme.accentColor)

                            }
                            .padding(EdgeInsets(top: 14, leading: 16, bottom: 14, trailing: 16))
                            .cornerRadius(20)
                            .onTapGesture {
                                withAnimation {
                                    viewModel.updateAppIcon(to: appIcon)
                                }
                            }
                            Divider()
                        }
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 40)
                }
            }
        }.navigationTitle("App Icon")
    }
}

struct AppIconView_Previews: PreviewProvider {
    static var previews: some View {
        AppIconView()
            .environmentObject(DataSource())
    }
}

//struct CheckboxView: View {
//    let isSelected: Bool
//
//    private var image: UIImage {
//        let imageName = isSelected ? "icon-checked" : "icon-unchecked"
//        return UIImage(imageLiteralResourceName: imageName)
//    }
//
//    var body: some View {
//        Image(uiImage: image)
//    }
//}
