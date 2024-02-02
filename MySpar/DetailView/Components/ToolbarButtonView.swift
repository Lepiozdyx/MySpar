//
//  ToolbarButtonView.swift
//  MySpar
//
//  Created by Alex on 31.01.2024.
//

import SwiftUI

struct ToolbarButtonView: View {
    let name: String
    let width: CGFloat
    let height: CGFloat
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(systemName: name)
                .resizable()
                .frame(width: width, height: height)
                .foregroundColor(.green)
        }
    }
}

#Preview {
    ToolbarButtonView(name: "heart", width: 20, height: 25, action: {})
}
