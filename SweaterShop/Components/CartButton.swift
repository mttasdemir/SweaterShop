//
//  CartButton.swift
//  SweaterShop
//
//  Created by Mustafa Taşdemir on 11.10.2022.
//

import SwiftUI

struct CartButton: View {
    var itemCount: Int = 8
    var digitInItemCount: Int {
        var digits = 1
        var itemCount = self.itemCount
        while itemCount >= 10 {
            itemCount = itemCount / 10
            digits += 1
        }
        return digits
    }
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image(systemName: "cart")
                .font(.title)
                .padding(.top, 6)
                .padding([.trailing], 6 * CGFloat(digitInItemCount))
            if itemCount > 0 {
                Circle()
                    .foregroundColor(.red)
                    .frame(width: 20, height: 20, alignment: .center)
                    .overlay {
                        Text("\(itemCount)")
                            .foregroundColor(.white)
                            .font(.caption)
                            .bold()
                    }
            }
        }
    }
}

struct CartButton_Previews: PreviewProvider {
    static var previews: some View {
        CartButton()
    }
}
