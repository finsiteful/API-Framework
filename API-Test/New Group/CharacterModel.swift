//
//  CharacterModel.swift
//  API-Test
//
//  Created by Yangzi Jiang on 12/12/19.
//  Copyright © 2019 Yangzi Jiang. All rights reserved.
//

import Foundation

//needs to have the exact same data as CharacterDTO Has and.

//take information from CharacterDTo and format it to the visualization we want for a specific page
class CharacterModel{
    let name : String?
    
    init(dto: CharacterDTO){
        self.name = dto.name
    }
}
 
