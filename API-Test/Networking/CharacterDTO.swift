//
//  CharacterDTO.swift
//  API-Test
//
//  Created by Yangzi Jiang on 12/12/19.
//  Copyright © 2019 Yangzi Jiang. All rights reserved.
//

import Foundation

//strict stucture for the data returned from JSON

struct CharacterDTO: Decodable {
    let name: String?
    let height: String?
}

struct CharacterResponseDTO: Decodable {
    let results: [CharacterDTO]?
}
