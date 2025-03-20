//
//  PokemonBgText.swift
//  PokeDex
//
//  Created by Emirhan İpek on 19.03.2025.
//

import SwiftUI

struct PokemonBgText: View {
    let name: String
    var body: some View {
        Text(name)
            .font(.largeTitle)
            .fontWeight(.bold)
            .multilineTextAlignment(.center)
            .shadow(radius: 20)
            .padding()
    }
}

#Preview {
    PokemonBgText(name: "Pikachu")
}
