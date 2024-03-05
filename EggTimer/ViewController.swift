//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    let eggTimes = ["Soft": 3, "Medium":4, "Hard": 7]

    var secondsRemaining = 60
    
    var timer = Timer()
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBAction func hardnessSelection(_ sender: UIButton) {
     
        let hardness = sender.currentTitle!
        
        timer.invalidate()
        
        secondsRemaining = eggTimes[hardness]!
        
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [self] (Timer) in
            if self.secondsRemaining > 0 {
                print ("\(self.secondsRemaining) seconds")
                self.secondsRemaining -= 1
            } else {
                Timer.invalidate()
                self.titleLabel.text = "Done"
               
            }
        }
                
    }
    
    
}
