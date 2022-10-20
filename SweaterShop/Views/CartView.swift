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
        List {
            if !cartManager.isEmpty {
                ForEach(cartManager.products) { product in
                    ProductRow(product: product)
                        .swipeActions(edge: .leading, allowsFullSwipe: false) {
                            Button(role: .destructive) {
                                cartManager.removeFromCart(product: product)
                            } label: {
                                Image(systemName: "trash.fill")
                            }
                        }
                }
                .onDelete(perform: cartManager.removeCart)
                .onMove(perform: cartManager.moveCart)
                HStack {
                    Text("Total is")
                    Spacer()
                    Text("$\(cartManager.total)")
                }
                .bold()
                .padding()
            } else {
                Text("Your cart is empty")
            }
        }
        .navigationTitle("Your Cart")
        .toolbar {
            ToolbarItem(placement: .destructiveAction) {
                EditButton()
            }
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
