//
//  TipView.swift
//  SleepMusic
//
//  Created by Jeroen Voogd on 04/06/2023.
//

import SwiftUI
import StoreKit

struct TipView: View {
    @EnvironmentObject var store: Store
    //Fetch Products
    //Purchase Prodcut
    // Update UI / Fetch Product State

    var body: some View {

        NavigationStack {
            Form {
                Section() {
                    ForEach(store.products) { product in
                        HStack {
                            Text(product.displayName)
                            Spacer()
                            Button("\(product.displayPrice)") {
                                Task {
                                    try await store.purchase(product)
                                }
                            }
                        }
                    }
                }
            }
        } .navigationTitle("Tip Jar")
    }
}


struct TipView_Previews: PreviewProvider {
    static var previews: some View {
        TipView()
            .environmentObject(Store())
    }
}


