//
//  ViewController.swift
//  BullsEye
//
//  Created by Eugenio Contreras on 3/1/19.
//  Copyright © 2019 Eugenio Contreras. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    @IBAction func showAlert() {
        
        let alert = UIAlertController(title: "Hello, World", message: "This is a new pop-up", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
    }

}

