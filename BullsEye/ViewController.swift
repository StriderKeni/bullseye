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
    @IBOutlet weak var scoreOutlet: UILabel!
    @IBOutlet weak var countRounds: UILabel!
    
    var currentValue: Int = 0
    var targetValue: Int = 0
    var score: Int = 100
    var rounds: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        currentValue = Int(sliderOutlet.value.rounded())
//        targetValue = Int.random(in: 1...100)
//        changeSlider.text = String(targetValue)
        startNewRound()
        
        let thumbImageNormal = #imageLiteral(resourceName: "SliderThumb-Normal")
        sliderOutlet.setThumbImage(thumbImageNormal, for: .normal)
        let thumbImageHighlighted = #imageLiteral(resourceName: "SliderThumb-Highlighted")
        sliderOutlet.setThumbImage(thumbImageHighlighted, for: .highlighted)
        
        let insets = UIEdgeInsets.init(top: 0, left: 14, bottom: 0, right: 14)
        
        let trackLeftImage = #imageLiteral(resourceName: "SliderTrackLeft")
        let trackLeftResizable = trackLeftImage.resizableImage(withCapInsets: insets)
        
        sliderOutlet.setMinimumTrackImage(trackLeftResizable, for: .normal)
        
        let trackRightImage = #imageLiteral(resourceName: "SliderTrackRight")
        let trackRightResizable = trackRightImage.resizableImage(withCapInsets: insets)
        sliderOutlet.setMaximumTrackImage(trackRightResizable, for: .normal)
        
        
        
    }

    @IBAction func showAlert() {
        
        let message: String
        let tittle: String
        
        if currentValue == targetValue {
            
            score=score+200
            tittle = "Perfect!"
            message = "You got it! your score is now: \(String(score))"
            
        } else if abs(currentValue - targetValue) < 2 {
            
            score = score + abs(currentValue - targetValue)
            tittle = "You almost got it"
            message = "Your score is : \(String(score)) and you have a bonus of 50, total \(String(score+50))"
            score = score+50
            
        } else if abs(currentValue - targetValue) < 50 {
            
            score = score + abs(currentValue - targetValue)
            tittle = "You almost got it"
            message = "Your score is : \(String(score))"
        
        } else {
            
            score = score + abs(currentValue - targetValue)
            tittle = "Please keep practicing"
            message = "Your score is : \(String(score))"
            
        }
    
        let alert = UIAlertController(title: tittle, message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Continue", style: .default, handler: {
            action in self.startNewRound()
        })
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func sliderMove(_ slider: UISlider) {
        currentValue = Int(slider.value.rounded())
        
    }
    
    
    @IBAction func resetBtn(_ sender: Any) {
        resetGame()
    }
    
    func startNewRound() {
        rounds+=1
        countRounds.text = String(rounds)
        targetValue = Int.random(in: 1...100)
        changeSlider.text = String(targetValue)
        currentValue = 50
        scoreOutlet.text = String(score)
        sliderOutlet.value = Float(currentValue)
    }
    
    func resetGame() {
        score=100
        rounds=0
        startNewRound()
    }
    
    
}

