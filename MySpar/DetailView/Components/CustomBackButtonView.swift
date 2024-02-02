//
//  CustomBackButtonView.swift
//  MySpar
//
//  Created by Alex on 31.01.2024.
//

import SwiftUI

struct CustomBackButtonView: View {
    @Environment(\.presentationMode) var presentationMode
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        Button {
            presentationMode.wrappedValue.dismiss()
        } label: {
            Image(systemName: "arrow.left")
                .resizable()
                .frame(width: width, height: height)
                .foregroundColor(.green)
        }
    }
}

#Preview {
    CustomBackButtonView(width: 20, height: 20)
}
