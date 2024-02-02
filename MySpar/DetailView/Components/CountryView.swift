//
//  CountryView.swift
//  MySpar
//
//  Created by Alex on 01.02.2024.
//

import SwiftUI

struct CountryView: View {
    let countryFlag: ImageResource
    let countryName: String
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        HStack {
            Image(countryFlag)
                .resizable()
                .frame(width: width, height: height)
                .clipShape(Circle())
            
            Text(countryName)
                .font(.callout)
            
            Spacer()
        }
    }
}

#Preview {
    CountryView(countryFlag: .spain, countryName: "Испания, Риоха", width: 30, height: 30)
}
