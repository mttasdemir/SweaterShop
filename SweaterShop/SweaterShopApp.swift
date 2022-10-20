//
//  SweaterShopApp.swift
//  SweaterShop
//
//  Created by Mustafa Taşdemir on 8.10.2022.
//

import SwiftUI

@main
struct SweaterShopApp: App {
    @StateObject var cartManager = CartManager()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(cartManager)
        }
    }
}
