//
//  ScrollingReviewTilesView.swift
//  MySpar
//
//  Created by Alex on 01.02.2024.
//

import SwiftUI

struct ScrollingReviewTilesView: View {
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0..<3) { _ in
                    NavigationLink(destination: Text("Navigation to Review")) {
                        ReviewTileView(
                            author: "Александр В.",
                            date: "7 мая 2023",
                            review: "Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими!",
                            width: 280,
                            height: 200
                        )
                    }
                    .buttonStyle(.plain)
                }
            }
        }
    }
}

#Preview {
    ScrollingReviewTilesView()
}
