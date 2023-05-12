//
//  AboutView.swift
//  SleepMusic
//
//  Created by Jeroen Voogd on 11/05/2023.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        NavigationStack {
            Text("Hello, About!")
        }.navigationTitle("About")
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
