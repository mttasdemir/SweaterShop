//
//  ProductCard.swift
//  SweaterShop
//
//  Created by Mustafa Taşdemir on 9.10.2022.
//

import SwiftUI

struct ProductCard: View {
    @EnvironmentObject var cartManager: CartManager
    let product: Product
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom) {
                Image(product.image)
                    .resizable()
                    .aspectRatio(Constants.aspectRatio, contentMode: .fit)
                    .cornerRadius(Constants.cornerRadius)
                
                VStack(alignment: .leading) {
                    Rectangle().frame(height: 0)
                    Text(product.name).bold()
                    Text("\(product.price)$")
                }
                .font(.caption)
                .padding(.all, Constants.textPadding)
                .background(.ultraThinMaterial)
                .opacity(Constants.textOpacity)
                .cornerRadius(Constants.cornerRadius)
            }
            Button {
                cartManager.addToCart(product: product)
            } label: {
                Image(systemName: "plus.circle.fill")
                    .font(.title)
                    .padding()
            }
        }
    }
    
    struct Constants {
        static let cornerRadius: CGFloat = 10
        static let shadowRadius: CGFloat = 5
        static let aspectRatio: CGFloat = 0.75
        static let textPadding: CGFloat = 6
        static let textOpacity: CGFloat = 0.8
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: productList[3])
            .environmentObject(CartManager())
    }
}
