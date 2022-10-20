//
//  ContentView.swift
//  SweaterShop
//
//  Created by Mustafa Taşdemir on 8.10.2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: Constants.minProductCardWidth), spacing: Constants.productCardSpacing)], spacing: Constants.productCardSpacing) {
                    ForEach(productList) { product in
                        NavigationLink(destination: ProductCardView(product)) {
                            ProductCard(product: product)
                        }
                    }
                }
            }
            .padding()
            .navigationTitle(Text("Sweater Shop"))
            .toolbar {
                NavigationLink {
                    CartView()
                } label: {
                    CartButton(itemCount: cartManager.numberOfItems)
                }
            }
        }
    }
    
    struct Constants {
        static let minProductCardWidth: CGFloat = 170
        static let productCardSpacing: CGFloat = 5
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(CartManager())
    }
}
