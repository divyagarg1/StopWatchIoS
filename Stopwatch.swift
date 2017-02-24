//
//  Stopwatch.swift
//  StopWatch
//
//  Created by Divya Garg on 2/16/17.
//  Copyright © 2017 Divya Garg. All rights reserved.
//

import Foundation


class StopWatch {
    var stopWatchDate : Date? = nil
    
    
    func startTimer() {
        stopWatchDate = Date()
    }
    
    
    func updateTimer() -> String {
        let currentTime =  stopWatchDate?.timeIntervalSinceNow
        
        
        if var elapsedTime = currentTime {
            elapsedTime = abs(elapsedTime)
            let minutes = Int(elapsedTime/60.0)
            elapsedTime -= (TimeInterval(minutes) * 60.0)
            
            let seconds = Int(elapsedTime)
            elapsedTime -= TimeInterval(seconds)
            
            let fraction = Int(elapsedTime * 100.0)
            
            let time = String(format: "%02d:%02d.%02d", minutes, seconds, fraction)
            return time;
        }
       
        return "00:00.0";
    }
    
        
    
}
