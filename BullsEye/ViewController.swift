//
//  ViewController.swift
//  BullsEye
//
//  Created by Eugenio Contreras on 3/1/19.
//  Copyright © 2019 Eugenio Contreras. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var changeSlider: UILabel!
    @IBOutlet weak var sliderOutlet: UISlider!
    
    var currentValue: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentValue = Int(sliderOutlet.value.rounded())
      
    }

    @IBAction func showAlert() {
        
        let message: String = "The value of the slider is now: \(currentValue)"
        
        let alert = UIAlertController(title: "Hello, World", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func sliderMove(_ slider: UISlider) {
        currentValue = Int(slider.value.rounded())
        changeSlider.text = String(currentValue)
    }
    
    
    
    
    
}

