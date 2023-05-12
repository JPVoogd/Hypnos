//
//  ContactView.swift
//  SleepMusic
//
//  Created by Jeroen Voogd on 12/05/2023.
//

import SwiftUI

struct ContactView: View {
    var body: some View {
        NavigationStack {
            Text("Hello, Contact!")
        }.navigationTitle("Contact")
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}
