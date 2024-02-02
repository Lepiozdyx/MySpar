//
//  DescriptionView.swift
//  MySpar
//
//  Created by Alex on 01.02.2024.
//

import SwiftUI

struct DescriptionView: View {
    let header: String
    let description: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(header)
                .font(.headline)
            
            HStack {
                Text(description)
                    .font(.subheadline)
                
                Spacer()
            }
        }
    }
}

#Preview {
    DescriptionView(header: "Описание", description: "Hello, World!")
}
