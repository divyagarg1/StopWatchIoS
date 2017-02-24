//
//  ViewController.swift
//  StopWatch
//
//  Created by Divya Garg on 2/16/17.
//  Copyright © 2017 Divya Garg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var timeLabel: UILabel!
    var myStopWatch = StopWatch()
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        timeLabel.text = "00:00:00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateTime() {
        let time  = myStopWatch.updateTimer()
        timeLabel.text = time
    }


    @IBAction func startWasPressed(_ sender: UIButton) {
        myStopWatch.startTimer()
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self,
                             selector: #selector(updateTime),
                             userInfo: nil,
                             repeats: true)
    }
   
    @IBAction func stopWasPressed(_ sender: UIButton) {
        timer.invalidate()
    }
}

