//
//  QuantityControlButtonView.swift
//  MySpar
//
//  Created by Alex on 02.02.2024.
//

import SwiftUI

struct QuantityControlButtonView: View {
    let action: () -> Void
    
    var body: some View {
        HStack(spacing: 24) {
            Button(action: action) {
                Text("-")
            }
            
            VStack {
                Text("1 шт")
                    .fontWeight(.bold)
                
                Text("120 ₽")
                    .font(.subheadline)
                    .opacity(0.5)
            }
            
            Button(action: action) {
                Text("+")
            }
        }
        .foregroundColor(.white)
        .padding([.leading, .trailing])
        .background(Color.green)
        .clipShape(Capsule())
    }
}

#Preview {
    QuantityControlButtonView(action: {})
}
