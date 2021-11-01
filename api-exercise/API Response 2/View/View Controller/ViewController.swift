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
        let networkManager = NetworkManager()
        // Do any additional setup after loading the view.
        networkManager.getNewMovie(page: 1) { movie, error in
            movie?.map({ data in
                print(data)
            })
            
        }
    }


}

