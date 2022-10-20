//
//  ProductRow.swift
//  SweaterShop
//
//  Created by Mustafa Taşdemir on 20.10.2022.
//

import SwiftUI

struct ProductRow: View {
    @EnvironmentObject var cartManager: CartManager
    let product: Product
    
    var body: some View {
        HStack {
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 50)
                .cornerRadius(10)
            VStack(alignment: .leading) {
                Text("\(product.name)").bold()
                Text("$\(product.price)")
            }
            Spacer()
            Button {
                cartManager.removeFromCart(product: product)
            } label: {
                Image(systemName: "trash")
                    .foregroundColor(.red)
            }
        }
        .padding(.horizontal)
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: products[2])
            .environmentObject(CartManager())
    }
}
