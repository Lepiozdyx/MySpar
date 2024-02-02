//
//  ReviewAndRatingView.swift
//  MySpar
//
//  Created by Alex on 01.02.2024.
//

import SwiftUI

struct ReviewAndRatingView: View {
    let imageName: String
    let rating: String
    let reviews: Int
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack {
                Image(systemName: imageName)
                    .foregroundColor(.yellow)
                    .font(.callout)
                
                Text(rating)
                    .font(.callout)
                    .fontWeight(.bold)
                
                Divider()
                
                Text("\(reviews) отзывов")
                    .font(.callout)
                    .opacity(0.5)
            }
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    ReviewAndRatingView(imageName: "star.fill", rating: "4.1", reviews: 19) {}
}
