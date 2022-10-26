//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        sender.alpha = 0.5
        playSound(source: sender.currentTitle)
        DispatchQueue.main.asyncAfter(deadline: .now() + 1){
            sender.alpha = 1
        }
    }
    
    func playSound(source: String?) {
            let url = Bundle.main.url(forResource: source, withExtension: "wav")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
                    
        }

    
}

