//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AudioToolbox
import AVFoundation

class ViewController: UIViewController{

    var audioPlayer: AVAudioPlayer!
    var selectedSound: String = ""

    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        
        playSound(note: soundArray[sender.tag - 1])
        
    }
    
    func playSound(note: String) {
        let xylophoneSound = Bundle.main.url(forResource: note, withExtension: "wav")!
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: xylophoneSound)
            guard let audioPlayer = audioPlayer else { return }
            
            audioPlayer.prepareToPlay()
            audioPlayer.play()
        } catch  {
            print(error)
        }
    }
    
}
