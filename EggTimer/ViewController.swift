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

    var totalTime: Float = 0
    var secondsPassed: Float = 0
    
    var timer = Timer()
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var progressView: UIProgressView!
    @IBAction func hardnessSelection(_ sender: UIButton) {
     
        let hardness = sender.currentTitle!
        
        timer.invalidate()
        
        totalTime = Float(eggTimes[hardness]!)
        
        progressView.progress = 0.0
        secondsPassed = 0
        titleLabel.text = hardness
        
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [self] (Timer) in
            if self.secondsPassed < totalTime {
                
                self.secondsPassed += 1
                
                let percentageProgress = secondsPassed/totalTime
                
                progressView.progress = Float(percentageProgress)
                
                
            } else {
                Timer.invalidate()
                self.titleLabel.text = "Done"
               
            }
        }
        

    }
    
    
}
