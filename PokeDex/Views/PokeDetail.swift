//
//  PokeDetail.swift
//  PokeDex
//
//  Created by Emirhan İpek on 20.03.2025.
//

import SwiftUI
import SDWebImageSwiftUI

struct PokeDetail: View {
    let poke: Pokemon
    var body: some View {
        
        let pokeVar = poke.variations[0]
        
        VStack(spacing: 20) {
            WebImage(url: pokeVar.urlImage) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fit)
            } placeholder: {
                Rectangle().foregroundColor(.gray)
            }
            Text(pokeVar.name)
                .font(.largeTitle)
                .fontWeight(.bold)
                .shadow(radius: 20)
            
            Text(pokeVar.description)
                .font(.caption)
                .multilineTextAlignment(.center)
                .padding()
            
            HStack{
                ForEach(pokeVar.types, id: \.self) { type in
                    
                    Text(type)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            }
            
            Link("Visit this pokemon", destination: URL(string: poke.link)!)
        }
    }
}

#Preview {
    PokeDetail(poke: Pokemon(num: 1, name: "Pikachu", variations: [], link: ""))
}
