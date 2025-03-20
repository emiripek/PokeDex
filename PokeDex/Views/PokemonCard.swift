//
//  PokemonCard.swift
//  PokeDex
//
//  Created by Emirhan İpek on 19.03.2025.
//

import SwiftUI

struct PokemonCard: View {
    let poke: Pokemon
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(.pikachu)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(20)
                .shadow(radius: 20)
                .padding()
            if #available(iOS 15.0, *) {
                PokemonBgText(name: poke.name)
                    .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 10))
                    .offset(x: 0, y: -40)
            } else {
                PokemonBgText(name: poke.name)
            }
        }
    }
}

#Preview {
    PokemonCard(poke: Pokemon(num: 1, name: "Pikachu", variations: []))
}
