//
//  ContentView.swift
//  PokeDex
//
//  Created by Emirhan İpek on 19.03.2025.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var pokemonVM: PokemonViewModel = PokemonViewModel()
    
    var body: some View {
        NavigationView {
            PokemonList(pokemons: pokemonVM.pokemons)
                .navigationTitle("Pokemons")
        }
    }
}

#Preview {
    ContentView()
}
