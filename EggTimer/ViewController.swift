//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //dictionary
    let eggTimes = ["Soft": 300, "Medium": 420, "Hard": 720] //key & value, like a hashmap
    
    var secondsRemaining = 60
    
    //let softTime = 5
    //let mediumTime = 7
    //let hardTime = 12
    
    //var hardness: String? //optional, this variable can store a string or it can simply be empty, nil
    

    @IBAction func hardnessSelected(_ sender: UIButton) {
        //print(sender.currentTitle) //prints out title of button selected
        let hardness = sender.currentTitle! //soft, medium, hard, this is of type String?, an optional string, ! unwraps optional
        
        secondsRemaining = eggTimes[hardness]! //unwrap optional of hardness, since it is checking if the input does not exist just in case
        
        Timer.scheduledTimer(timeInterval: 1.0, target:self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
        @objc func updateTimer(){
            if secondsRemaining > 0 {
                print("\(secondsRemaining) seconds.")
                secondsRemaining -= 1
            }
        }
//        switch hardness {
//        case "Soft":
//            print(softTime)
//        case "Medium":
//            print(mediumTime)
//        case "Hard":
//            print(hardTime)
//        default:
//            print("Error")
//        }
    
    
}
