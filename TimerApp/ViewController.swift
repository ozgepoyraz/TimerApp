//
//  ViewController.swift
//  TimerApp
//
//  Created by Özge Poyraz on 4.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    var counter = 0

    @IBOutlet weak var timerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the
        
        counter = 10
        timerLabel.text = "Time: \(counter)"
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunc), userInfo: nil, repeats: true)
        
    }
    
    @objc func timerFunc(){
        timerLabel.text = "Time: \(counter)"
        counter = counter - 1
        
        if counter == 0{
            timer.invalidate()
            timerLabel.text = "Time is over"
        }
    }
    

}

