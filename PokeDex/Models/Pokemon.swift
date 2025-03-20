//
//  Pokemon.swift
//  PokeDex
//
//  Created by Emirhan İpek on 19.03.2025.
//

import Foundation

struct Pokemon: Codable, Identifiable {
    var id: UUID {
        get {
            UUID()
        }
    }
    let num: Int
    let name: String
    let variations: [PokeVariton]
}

struct PokeVariton: Codable {
    let name: String
    let description: String
    let image: String
    let types: [String]
}
