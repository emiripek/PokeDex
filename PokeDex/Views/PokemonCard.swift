//
//  PokemonCard.swift
//  PokeDex
//
//  Created by Emirhan İpek on 19.03.2025.
//

import SwiftUI
import SDWebImageSwiftUI

struct PokemonCard: View {
    let poke: Pokemon
    var body: some View {
        ZStack(alignment: .bottom) {
            NavigationLink(destination: PokeDetail(poke: poke)) {
                EmptyView()
            }
            WebImage(url: poke.variations[0].urlImage) { image in
                    image.resizable()
                } placeholder: {
                        Rectangle().foregroundColor(.gray)
                }
                .onSuccess { image, data, cacheType in
                    
                }
                .indicator(.activity)
                .transition(.fade(duration: 0.5))
                .aspectRatio(contentMode: .fit)
                .cornerRadius(20)
                .shadow(radius: 20)
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
    PokemonCard(poke: Pokemon(num: 1, name: "Pikachu", variations: [], link: ""))
}
