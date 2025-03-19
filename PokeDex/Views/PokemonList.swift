//
//  PokemonList.swift
//  PokeDex
//
//  Created by Emirhan İpek on 19.03.2025.
//

import SwiftUI

struct PokemonList: View {
    var body: some View {
        List {
            ForEach(1..<20) { i in
                if #available(iOS 15.0, *) {
                    PokemonCard()
                        .listRowSeparator(.hidden)
                        .listRowBackground(Color.clear)
                } else {
                    // Fallback on earlier versions
                    PokemonCard()
                        .listRowBackground(Color.clear)
                }
            }
        }
    }
}

#Preview {
    PokemonList()
}
