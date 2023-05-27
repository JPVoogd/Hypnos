//
//  AboutView.swift
//  SleepMusic
//
//  Created by Jeroen Voogd on 11/05/2023.
//

import SwiftUI

struct AboutView: View {
    @EnvironmentObject var theme: ThemeModel

    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                Image("Jeroen")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(lineWidth: 5)
                            .foregroundColor(theme.selectedTheme.accentColor)
                    )
                Spacer()
                HStack {
                    Text("Hi,")
                        .font(.system(size: 35))
                        .foregroundColor(theme.selectedTheme.accentColor)
                    Text("I'm Jeroen Voogd ")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                }
                    .bold()
                Text("iOS Developer / Web Developer")
                    .font(.system(size: 20))
                    .foregroundColor(theme.selectedTheme.accentColor)

                Divider()
                    .frame(minHeight: 2)
                    .background(theme.selectedTheme.accentColor)
                VStack(alignment: .leading) {
                    Text("I'm a beginner Web and iOS Developer Looking to learn new things everyday. I made this app as a challange for myself to help me become a better developer.")
                        .padding(.bottom)
                    Text("This App is made to help people sleep better since it's one of the most important things in life.")
                        .padding(.bottom)
                    Text("If you like the app please share it with your friends and family.")
                        .padding(.bottom)
                }
                Spacer()
            } .padding(.all)
        }
        .navigationTitle("About")
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
            .environmentObject(ThemeModel())
    }
}
