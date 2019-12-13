//
//  NetworkManager.swift
//  API-Test
//
//  Created by Yangzi Jiang on 12/12/19.
//  Copyright © 2019 Yangzi Jiang. All rights reserved.
//

import Foundation

class NetworkManager{
    
    func fetchData(completion: @escaping (([CharacterDTO])->Void)){
        //()->Void defines the function type
        print("We are fetching login info")
        let urlString = "https://swapi.co/api/people"
        //turn string into url object
        
        guard let url = URL(string: urlString) else {return}
        
        // shared is a "static variable"
        let session = URLSession.shared
        
        session.dataTask(with: url){
            (data, response, error) in
            guard let jsonData = data else {return}
            do {
                let response = try JSONDecoder().decode(CharacterResponseDTO.self, from: jsonData) // outer node
                
                guard let characterDTO = response.results else{return} //as? to cast it as the type we want
//
//                print("We have found characterDTO info \(String(describing: characterDTO[0].name))")
                completion(characterDTO)
            } catch {}
            print("Look at json Data")
            } .resume()
        
    }
}
