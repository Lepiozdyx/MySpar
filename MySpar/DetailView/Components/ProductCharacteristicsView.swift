//
//  ProductCharacteristicsView.swift
//  MySpar
//
//  Created by Alex on 01.02.2024.
//

import SwiftUI

struct ProductCharacteristicsView: View {
    var nutritionElements = [
        ("Производство", "Россия, Краснодарский край"),
        ("Энергетическая ценность, ккал/100г", "25 ккал, 105 кДж"),
        ("Жиры/100г", "0,1 г"),
        ("Белки/100г", "1,3 г"),
        ("Углеводы/100г", "3,3 г")
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Основные характеристики")
                .font(.headline)
            
            ForEach(nutritionElements, id: \.0) { element in
                NutritionalElementView(title: element.0, value: element.1)
            }
            
            Button("Все характеристики", action: {})
                .foregroundColor(.green)
                .font(.headline)
                .padding(.top)
        }
    }
}

#Preview {
    ProductCharacteristicsView()
}
