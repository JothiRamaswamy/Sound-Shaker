//
//  ViewController.swift
//  Sound Shaker
//
//  Created by Sambandam, Sujatha {BIS} on 7/2/17.
//  Copyright © 2017 Jothi R. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    var player = AVAudioPlayer()
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        let soundArray = ["chimpanzee", "cricket", "dog1", "squirrel", "toad"]
        
        
        if event?.subtype == UIEventSubtype.motionShake {
            
            let random = Int(arc4random_uniform(UInt32(soundArray.count)))
            
            let audioPath = Bundle.main.path(forResource: soundArray[random], ofType: "mp3")
            
            
            
            do {
                try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
                
                player.play()
            } catch {
                
            }
            
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

