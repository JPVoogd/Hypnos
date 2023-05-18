//
//  ThemeView.swift
//  SleepMusic
//
//  Created by Jeroen Voogd on 12/05/2023.
//

import SwiftUI

struct ThemeView: View {
    @EnvironmentObject var dataSource: DataSource

    var body: some View {
        NavigationStack {
            List {
                Section {
                    Label {
                        Text("Blue")
                    } icon: {
                        Circle()
                            .fill(.blue)
                            .frame(width: 25, height: 25)
                    } .onTapGesture {
                        dataSource.selectedThemeAS = 0
                    }

                    Label {
                        Text("Brown")
                    } icon: {
                        Circle()
                            .fill(.brown)
                            .frame(width: 25, height: 25)
                    } .onTapGesture {
                        dataSource.selectedThemeAS = 1
                    }

                    Label {
                        Text("Cyan")
                    } icon: {
                        Circle()
                            .fill(.cyan)
                            .frame(width: 25, height: 25)
                    }
                    .onTapGesture {
                        dataSource.selectedThemeAS = 2
                    }

                    Label {
                        Text("Gray")
                    } icon: {
                        Circle()
                            .fill(.gray)
                            .frame(width: 25, height: 25)
                    }
                    .onTapGesture {
                        dataSource.selectedThemeAS = 3
                    }

                    Label {
                        Text("Green")
                    } icon: {
                        Circle()
                            .fill(.green)
                            .frame(width: 25, height: 25)
                    }
                    .onTapGesture {
                        dataSource.selectedThemeAS = 4
                    }

                    Label {
                        Text("Indigo")
                    } icon: {
                        Circle()
                            .fill(.indigo)
                            .frame(width: 25, height: 25)
                    }
                    .onTapGesture {
                        dataSource.selectedThemeAS = 5
                    }

                    Label {
                        Text("Mint")
                    } icon: {
                        Circle()
                            .fill(.mint)
                            .frame(width: 25, height: 25)
                    }
                    .onTapGesture {
                        dataSource.selectedThemeAS = 6
                    }

                    Label {
                        Text("Orange")
                    } icon: {
                        Circle()
                            .fill(.orange)
                            .frame(width: 25, height: 25)
                    }
                    .onTapGesture {
                        dataSource.selectedThemeAS = 7
                    }

                    Label {
                        Text("Pink")
                    } icon: {
                        Circle()
                            .fill(.pink)
                            .frame(width: 25, height: 25)
                    }
                    .onTapGesture {
                        dataSource.selectedThemeAS = 8
                    }

                    Label {
                        Text("Purple")
                    } icon: {
                        Circle()
                            .fill(.purple)
                            .frame(width: 25, height: 25)
                    }
                    .onTapGesture {
                        dataSource.selectedThemeAS = 9
                    }

//                    Label {
//                        Text("Red")
//                    } icon: {
//                        Circle()
//                            .fill(.red)
//                            .frame(width: 20, height: 20)
//                    }
//                    .onTapGesture {
//                        dataSource.selectedThemeAS = 10
//                    }

//                    Label {
//                        Text("Teal")
//                    } icon: {
//                        Circle()
//                            .fill(.teal)
//                            .frame(width: 20, height: 20)
//                    }
//                    .onTapGesture {
//                        dataSource.selectedThemeAS = 11
//                    }

//                    Label {
//                        Text("Yellow")
//                    } icon: {
//                        Circle()
//                            .fill(.yellow)
//                            .frame(width: 20, height: 20)
//                    }
//                    .onTapGesture {
//                        dataSource.selectedThemeAS = 12
//                    }
                }
            }
        }.navigationTitle("Accent Color")
    }
}

struct ThemeView_Previews: PreviewProvider {
    static var previews: some View {
        ThemeView()
            .environmentObject(DataSource())
    }
}
