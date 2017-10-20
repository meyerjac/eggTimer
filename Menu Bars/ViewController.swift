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

    @IBAction func cameraClicked(_ sender: Any) {
        
        print("camera was clicked")
        
        timer.invalidate()
    }
    
    func processTimer() {
        print("another second has passed")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.processTimer), userInfo: nil, repeats: true)
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

