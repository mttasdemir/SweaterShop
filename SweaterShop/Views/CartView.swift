//
//  CartView.swift
//  SweaterShop
//
//  Created by Mustafa Taşdemir on 20.10.2022.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        ScrollView {
            if !cartManager.isEmpty {
                ForEach(cartManager.products) { product in
                    ProductRow(product: product)
                }
            } else {
                Text("Your cart is empty")
            }
        }
        .navigationTitle("Your Cart")
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
