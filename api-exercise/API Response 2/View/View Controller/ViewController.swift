//
//  ViewController.swift
//  API Response 2
//
//  Created by Igor de Castro on 13/10/21.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        // Do any additional setup after loading the view.
        let viewModel = MovieViewModel(page: 1)
        
        viewModel.callNetworkManager()
        
    }
}

