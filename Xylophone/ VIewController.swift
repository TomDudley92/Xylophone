//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AudioToolbox
//import AVFoundation

class ViewController: UIViewController{

//    var audioPlayer: AVAudioPlayer?

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        
//        let xylophoneSound = Bundle.main.url(forResource: "note\(sender.tag)", withExtension: "wav")!
//
//        do {
//            audioPlayer = try AVAudioPlayer(contentsOf: xylophoneSound)
//            guard let audioPlayer = audioPlayer else { return }
//
//            audioPlayer.prepareToPlay()
//            audioPlayer.play()
//        } catch let error as Error {
//            print(error)
//        }
        
        if let soundUrl = Bundle.main.url(forResource: "note\(sender.tag)", withExtension: "wav"){
            var mySound: SystemSoundID = 0
            AudioServicesCreateSystemSoundID(soundUrl as CFURL, &mySound)
            //Play
            AudioServicesPlaySystemSound(mySound)
        }
        
        
    }
}
