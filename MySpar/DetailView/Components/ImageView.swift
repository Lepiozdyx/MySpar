//
//  ImageView.swift
//  MySpar
//
//  Created by Alex on 01.02.2024.
//

import SwiftUI

struct ImageView: View {
    @State private var image: Image? = nil
    @State private var isLoading = false
    
    let placeholderImage = Image(systemName: "xmark.circle")
    let urlString: String
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        Group {
            if isLoading {
                ProgressView()
                    .frame(width: width, height: height)
            } else {
                (image ?? placeholderImage)
                    .resizable()
                    .scaledToFill()
                    .frame(width: width, height: height)
                    .clipShape(.rect(cornerRadius: 10))
            }
        }
        .onAppear {
            loadImage()
        }
    }
    
    private func loadImage() {
        guard let url = URL(string: urlString) else {
            image = placeholderImage
            return
        }
        
        isLoading = true
        NetworkManager.shared.fetchImage(from: url) { result in
            isLoading = false
            switch result {
            case .success(let imageData):
                if let uiImage = UIImage(data: imageData) {
                    image = Image(uiImage: uiImage)
                } else {
                    image = placeholderImage
                }
            case .failure:
                image = placeholderImage
            }
        }
    }
}

#Preview {
    ImageView(urlString: Constants.imageUrl, width: 400, height: 100)
}
