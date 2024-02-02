//
//  ContentView.swift
//  MySpar
//
//  Created by Alex on 31.01.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView(selection: .constant(1)) {
            DetailView()
                .tabItem {
                    Label("Главная", systemImage: "tree.circle")
                }
            
            Text("2")
                .tabItem {
                    Label("Каталог", systemImage: "square.grid.2x2")
                }
            
            Text("3")
                .tabItem {
                    Label("Корзина", systemImage: "cart")
                }
            
            Text("4")
                .tabItem {
                    Label("Профиль", systemImage: "person")
                }
        }
        .accentColor(.green)
    }
}

#Preview {
    NavigationView {
        ContentView()
    }
}
