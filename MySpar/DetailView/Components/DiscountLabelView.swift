//
//  DiscountLabelView.swift
//  MySpar
//
//  Created by Alex on 01.02.2024.
//

import SwiftUI

struct DiscountLabelView: View {
    let discountAmount: String
    
    var body: some View {
        Text(discountAmount)
            .font(.caption)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .padding(.horizontal, 8)
            .padding(.vertical, 4)
            .background(Color.red)
            .clipShape(.rect(cornerRadius: 8))
            .rotationEffect(.degrees(-5))
            .shadow(radius: 2)
    }
}

#Preview {
    DiscountLabelView(discountAmount: "-5%")
}
