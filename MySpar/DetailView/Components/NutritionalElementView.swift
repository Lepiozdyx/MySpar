//
//  NutritionalElementView.swift
//  MySpar
//
//  Created by Alex on 01.02.2024.
//

import SwiftUI

struct NutritionalElementView: View {
    let title: String
    let value: String
    
    var body: some View {
        HStack(alignment: .bottom) {
            Text(title)
                .font(.subheadline)
            
            DottedLine()
            
            Text(value)
                .font(.subheadline)
        }
    }
}

#Preview {
    NutritionalElementView(title: "Энергетическая ценность", value: "25 ккал, 105 кДж")
}

struct DottedLine: View {
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                path.move(to: CGPoint(x: 0, y: 0))
                path.addLine(to: CGPoint(x: geometry.size.width, y: 0))
            }
            .stroke(style: StrokeStyle(lineWidth: 1, dash: [2]))
            .foregroundColor(.gray)
        }
        .frame(height: 1)
    }
}
