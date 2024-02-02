//
//  ReviewTileView.swift
//  MySpar
//
//  Created by Alex on 01.02.2024.
//

import SwiftUI

struct ReviewTileView: View {
    @State private var rating = 4
    let author: String
    let date: String
    let review: String
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(author)
                .font(.headline)
            
            Text(date)
                .font(.subheadline)
                .opacity(0.5)
            
            RatingView(rating: $rating)
            
            Text(review)
                .font(.subheadline)
        }
        .padding()
        .background(Color.white)
        .clipShape(.rect(cornerRadius: 10))
        .shadow(radius: 5)
        .frame(width: width, height: height)
    }
}

#Preview {
    ReviewTileView(author: "Александр В.", date: "7 мая 2023", review: "Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими!", width: 280, height: 200)
}
