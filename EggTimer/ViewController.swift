//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    let eggTimes = ["Soft": 5, "Medium": 7, "Hard": 12]
    
    var secondsRemaining = 60
    
    @IBAction func hardnessSelection(_ sender: UIButton) {
        
        let hardness = sender.currentTitle!
        
        print(eggTimes[hardness]!)
        
    }
    
    @IBAction func startTimer(_ sender: UIButton) {
            
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (Timer) in
            if self.secondsRemaining > 0 {
                print ("\(self.secondsRemaining) seconds")
                self.secondsRemaining -= 1
            } else {
                Timer.invalidate()
            }
        }
                
    }
    
    
}
