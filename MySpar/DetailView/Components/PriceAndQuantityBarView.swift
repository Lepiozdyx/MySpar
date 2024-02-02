//
//  PriceAndQuantityBarView.swift
//  MySpar
//
//  Created by Alex on 02.02.2024.
//

import SwiftUI

struct PriceAndQuantityBarView: View {
    @State private var selection = "Шт"
    let units = ["Шт", "Кг"]
    
    var body: some View {
        VStack {
            Picker("Выбор", selection: $selection) {
                ForEach(units, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(.segmented)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("55.9 ₽/кг")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("199.0")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .strikethrough()
                }
                
                Spacer()
                
                QuantityControlButtonView(action: {})
            }
            .padding(.top)
        }
    }
}

#Preview {
    PriceAndQuantityBarView()
}
