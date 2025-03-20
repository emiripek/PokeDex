//
//  PokemonList.swift
//  PokeDex
//
//  Created by Emirhan İpek on 19.03.2025.
//

import SwiftUI

struct PokemonList: View {
    
    let pokemons: [Pokemon]
    
    var body: some View {
        List {
            ForEach(pokemons) { poke in
                if #available(iOS 15.0, *) {
                    PokemonCard(poke: poke)
                        .listRowSeparator(.hidden)
                        .listRowBackground(Color.clear)
                } else {
                    // Fallback on earlier versions
                    PokemonCard(poke: poke)
                        .listRowBackground(Color.clear)
                }
            }
        }
    }
}

#Preview {
    PokemonList(pokemons: [])
}
