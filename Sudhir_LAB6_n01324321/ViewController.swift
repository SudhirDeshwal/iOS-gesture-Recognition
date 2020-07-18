//
//  ViewController.swift
//  Sudhir_LAB6_n01324321
//
//  Created by user165333 on 7/18/20.
//  Copyright © 2020 n01324321 Sudhir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    //Label to display on screen
    @IBOutlet weak var myLabel: UILabel!
    
    
    //int var to store the value of number
    var x :Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
                  
        
        //swipe up gesture
        let upSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(sender:)))
        upSwipe.direction = .up
        
        //swipe down gesture
        let downSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(sender:)))
        downSwipe.direction = .down
        
        
        //adding both gestures into the view
        view.addGestureRecognizer(upSwipe)
        
        view.addGestureRecognizer(downSwipe)
    }

     //creating function to handle gesture action
    @objc func handleSwipe(sender: UISwipeGestureRecognizer) {
        
        if sender.state == .ended {
            
            //switch to handle both cases up and down
            switch sender.direction {
            case.up:
                view.backgroundColor =  .red
                x += 1
                myLabel.text = String(x)
                
            case.down:
                view.backgroundColor =  .yellow
                x -= 1
                myLabel.text = String(x)
            default:
               break
            }
            
            
            
        }
        
    }
    
    
}

