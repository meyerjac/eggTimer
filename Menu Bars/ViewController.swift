//
//  ViewController.swift
//  Menu Bars
//
//  Created by jackson Meyer on 10/20/17.
//  Copyright © 2017 jackson Meyer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    
    var time = 210
    
    var increment = 10
    
    @IBOutlet weak var TimeRemainingLabel: UILabel!
    
    @IBAction func PauseButtonClicked(_ sender: Any) {
        
        timer.invalidate()
        
    }
    
    @IBAction func playButtonClicked(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.countDown), userInfo: nil, repeats: true)
    }
    
    @IBAction func addTenSeconds(_ sender: Any) {
        
        time += increment
        
        TimeRemainingLabel.text = String(time)
    }
    
    @IBAction func minusTenSeconds(_ sender: Any) {
        
        time -= increment
        
        if time < increment {
            //cannot get a negative value so just leave it as it is
        } else {
           time -= increment
            
           TimeRemainingLabel.text = String(time)
        }
       
        
        
    }
    @IBAction func resetTimer(_ sender: Any) {
        
        TimeRemainingLabel.text = String(time)
        
    }
    
    func countDown() {
        
        let timeRemaining = TimeRemainingLabel.text
        
        let timeRemainingInteger = Int(timeRemaining!)! - 1
        
        TimeRemainingLabel.text = String(timeRemainingInteger)
        
        if timeRemainingInteger == 0 {
            timer.invalidate()
            //play a cool ringtonw
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

