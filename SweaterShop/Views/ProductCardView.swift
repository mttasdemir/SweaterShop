//
//  ProductCardView.swift
//  SweaterShop
//
//  Created by Mustafa Taşdemir on 11.10.2022.
//

import SwiftUI

struct ProductCardView: View {
    let product: Product
    @State private var maximize: Bool = false
    init(_ product: Product) {
        self.product = product
    }
    var body: some View {
        Image(product.image)
            .resizable()
            .aspectRatio(contentMode: maximize ? .fill : .fit)
            .ignoresSafeArea(edges: .all)
            .padding()
            .onTapGesture(count: 2) {
                maximize.toggle()
            }
    }
}

struct ProductCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProductCardView(productList[0])
    }
}
