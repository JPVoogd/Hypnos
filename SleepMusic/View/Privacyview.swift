//
//  Privacyview.swift
//  SleepMusic
//
//  Created by Jeroen Voogd on 12/05/2023.
//

import SwiftUI

struct Privacyview: View {
    var body: some View {
        NavigationStack {
            Text("Hello, Privacy Policy!")
        }.navigationTitle("Privacy Policy")
    }
}

struct Privacyview_Previews: PreviewProvider {
    static var previews: some View {
        Privacyview()
    }
}
