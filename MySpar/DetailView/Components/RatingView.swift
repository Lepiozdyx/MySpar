//
//  RatingView.swift
//  MySpar
//
//  Created by Alex on 01.02.2024.
//

import SwiftUI

struct RatingView: View {
    @Binding var rating: Int
    
    var maximumRating = 5
    var offImage: Image?
    var onImage = Image(systemName: "star.fill")
    var offColor = Color.gray
    var onColor = Color.yellow
    
    var body: some View {
        HStack {
            ForEach(1..<maximumRating + 1, id: \.self) { number in
                Button {
                    rating = number
                } label: {
                    getImage(for: number)
                        .foregroundColor(number > rating ? offColor : onColor)
                }
                .font(.callout)
            }
        }
        .buttonStyle(.plain)
    }
    
    private func getImage(for number: Int) -> Image {
        if number > rating {
            offImage ?? onImage
        } else {
            onImage
        }
    }
}

#Preview {
    RatingView(rating: .constant(4))
}
