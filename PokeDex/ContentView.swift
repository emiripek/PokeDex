//
//  ContentView.swift
//  PokeDex
//
//  Created by Emirhan İpek on 19.03.2025.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var pokemonVM: PokemonViewModel = PokemonViewModel()
    
    @State var searchText: String = ""
    
    var body: some View {
        NavigationView {
            if #available(iOS 15.0, *) {
                PokemonList(pokemons: filteredPokemons)
                    .task {
                        await pokemonVM.fetchPokemons()
                    }
                    .searchable(text: $searchText)
                    .navigationTitle("Pokemons")
            } else {
                PokemonList(pokemons: filteredPokemons)
                    .navigationTitle("Pokemons")
            }
        }
    }
    var filteredPokemons: [Pokemon] {
        guard !searchText.isEmpty else {
            return pokemonVM.pokemons
        }
        
        return pokemonVM.pokemons.filter {
            $0.name.lowercased().contains(searchText.lowercased())
        }
    }
}

#Preview {
    ContentView()
}
