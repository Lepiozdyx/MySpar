//
//  ImageLabelView.swift
//  MySpar
//
//  Created by Alex on 01.02.2024.
//

import SwiftUI

struct ImageLabelView: View {
    let name: String
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .foregroundColor(.green)
            .frame(width: width, height: height)
            .overlay (
                Text(name)
                    .foregroundColor(.white)
                    .font(.caption)
            )
    }
}

#Preview {
    ImageLabelView(name: "Price", width: 200, height: 100)
}
