//
//  PokemonCard.swift
//  PokeDex
//
//  Created by Emirhan İpek on 19.03.2025.
//

import SwiftUI

struct PokemonCard: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(.pikachu)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(20)
                .shadow(radius: 20)
                .padding()
            if #available(iOS 15.0, *) {
                PokemonBgText()
                    .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 10))
                    .offset(x: 0, y: -40)
            } else {
                PokemonBgText()
            }
        }
    }
}

#Preview {
    PokemonCard()
}
