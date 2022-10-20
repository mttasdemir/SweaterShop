//
//  CartManager.swift
//  SweaterShop
//
//  Created by Mustafa Taşdemir on 20.10.2022.
//

import Foundation


class CartManager: ObservableObject {
    @Published private(set) var products = [Product]()
    @Published private(set) var total: Int = 0
    
    var numberOfItems: Int {
        products.count
    }
    
    var isEmpty: Bool {
        products.count == 0
    }
    
    func addToCart(product: Product) {
        products.append(product)
        total += product.price
    }
    
    func removeFromCart(product: Product) {
        let index = products.firstIndex { $0.id == product.id }
        if let index {
            products.remove(at: index)
            total -= product.price
        }
        
    }
}
