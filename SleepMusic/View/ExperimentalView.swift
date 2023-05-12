//
//  ExperimentalView.swift
//  SleepMusic
//
//  Created by Jeroen Voogd on 12/05/2023.
//

import SwiftUI

struct ExperimentalView: View {
    var body: some View {
        NavigationStack {
            Text("Hello, Experimental!")
        }.navigationTitle("Experimental")
    }
}

struct ExperimentalView_Previews: PreviewProvider {
    static var previews: some View {
        ExperimentalView()
    }
}
