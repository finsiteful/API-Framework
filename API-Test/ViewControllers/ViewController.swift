//
//  ViewController.swift
//  API-Test
//
//  Created by Yangzi Jiang on 12/12/19.
//  Copyright © 2019 Yangzi Jiang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //reference to view model
    let viewModel = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
    }
    
    func fetchData(){
        viewModel.fetchData()
    }

}

