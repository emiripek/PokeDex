//
//  PokemonViewModel.swift
//  PokeDex
//
//  Created by Emirhan İpek on 19.03.2025.
//

import Foundation

class PokemonViewModel: ObservableObject {
    @Published var pokemons: [Pokemon] = []
    
    init() {
        self.fetchPokemons()
    }
    
    func fetchPokemons() {
        APIService().fetchPokemons { pokemons in
            self.pokemons = pokemons
        }
    }
}
