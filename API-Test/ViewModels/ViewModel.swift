//
//  ViewModel.swift
//  API-Test
//
//  Created by Yangzi Jiang on 12/12/19.
//  Copyright © 2019 Yangzi Jiang. All rights reserved.
//

import Foundation

class ViewModel{
    let networkManager = NetworkManager()
    
    func fetchData(){
        print("we are fetching")
        networkManager.fetchData(){
            // ([CharacterDTO])->Void) this function was the parameter in NetworkManager, we are passing this function - the stuff inside networkManager.fetchData(){...} - into the networkManager
            characterDTOArray in
            print(characterDTOArray[0].name)
        }
    }
}
