//
//  HeaderView.swift
//  MySpar
//
//  Created by Alex on 01.02.2024.
//

import SwiftUI

struct HeaderView: View {
    let header: String
    
    var body: some View {
        HStack {
            Text(header)
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Spacer()
        }
    }
}

#Preview {
    HeaderView(header: "Добавка ''Липа'' к чаю 200 г")
}
