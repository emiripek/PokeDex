//
//  APIService.swift
//  PokeDex
//
//  Created by Emirhan İpek on 19.03.2025.
//

import Foundation

var baseURL: String = "https://raw.githubusercontent.com/robert-z/simple-pokemon-json-api"

class APIService {
    
    func fetchPokemons(completion: @escaping ([Pokemon]) -> ()) {
        let url = URL(string: "\(baseURL)/master/data/pokemon.json")
        
        URLSession.shared.dataTask(with: url!) { (data, _, _) in
            
            guard let data = data else { return }
            
            DispatchQueue.main.async {
                let pokemons = try! JSONDecoder().decode([Pokemon].self, from: data)
                print(pokemons)
                completion(pokemons)
            }
        }.resume()
    }
}
