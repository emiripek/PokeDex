//
//  ContentView.swift
//  PokeDex
//
//  Created by Emirhan İpek on 19.03.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            PokemonList()
                .navigationTitle("Pokemons")
        }
    }
}

#Preview {
    ContentView()
}
