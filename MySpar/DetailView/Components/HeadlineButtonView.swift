//
//  HeadlineButtonView.swift
//  MySpar
//
//  Created by Alex on 01.02.2024.
//

import SwiftUI

struct HeadlineButtonView: View {
    let headline: String
    let reviewsAmount: Int
    let action: () -> Void
    
    var body: some View {
        HStack {
            Text(headline)
                .font(.title2)
                .fontWeight(.bold)
            
            Spacer()
            
            Button("Все \(reviewsAmount)", action: action)
                .foregroundColor(.green)
                .font(.headline)
        }
    }
}

#Preview {
    HeadlineButtonView(headline: "Отзывы", reviewsAmount: 152, action: {})
}
