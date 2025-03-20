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
        /// for iOS 15.0 or later versions don't use this function
//        self.fetchPokemons()
    }
    
    func fetchPokemons() {
        APIService().fetchPokemons { pokemons in
            self.pokemons = pokemons
        }
    }
    
    @available(iOS 15.0, *)
    func fetchAsyncPokemons() async {
        self.pokemons = await APIService().fetchPokemons()
    }
}
