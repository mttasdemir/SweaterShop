//
//  Product.swift
//  SweaterShop
//
//  Created by Mustafa Taşdemir on 9.10.2022.
//

import Foundation

struct Product: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let price: Int
}

let products = [ Product(name: "Blue Man Sweater", image: "BlueManSweater", price: 20),
                 Product(name: "Blue Woman Sweater", image: "BlueSweater", price: 25),
                 Product(name: "Blue White Sweater", image: "BlueWhiteSweater", price: 40),
                 Product(name: "Brown Knit Sweater", image: "BrownKnitSweater", price: 30),
                 Product(name: "Brown Sweater", image: "BrownSweater", price: 30),
                 Product(name: "Checkered Dress", image: "CheckeredDress", price: 45),
                 Product(name: "Gray Short Sweater", image: "GrayShortSweater", price: 20),
                 Product(name: "Gray Sweater", image: "GraySweater", price: 30),
                 Product(name: "Green Long Sleeve", image: "GreenLongSleeve", price: 20),
                 Product(name: "Neck Long Sleeve", image: "NeckLongSleeve", price: 50),
                 Product(name: "Red Sweater", image: "RedSweater", price: 45),
                 Product(name: "Striped Knit Sweater", image: "StripedKnitSweater", price: 45),
                 Product(name: "Wavy Yellow Woolen", image: "WavyYellowWoolen", price: 35)
                ]
