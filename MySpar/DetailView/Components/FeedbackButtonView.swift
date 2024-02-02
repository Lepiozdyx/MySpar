//
//  FeedbackButtonView.swift
//  MySpar
//
//  Created by Alex on 02.02.2024.
//

import SwiftUI

struct FeedbackButtonView: View {
    var text: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(text)
                .foregroundColor(.green)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 10)
                .overlay(
                    Capsule()
                        .stroke(Color.green, lineWidth: 3)
                )
        }
    }
}

#Preview {
    FeedbackButtonView(text: "Leave Review", action: {})
}
