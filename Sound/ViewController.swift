//
//  ViewController.swift
//  Sound
//
//  Created by 小林玲衣奈 on 2020/09/15.
//  Copyright © 2020 Reina Kobayashi. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet var drumButton: UIButton!

    let drumSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchDownDrumButton(){
        
        drumButton.setImage(UIImage(named: "drumPlayingImage"), for: .normal)
        
        drumSoundPlayer.currentTime = 0
        drumSoundPlayer.play()
        
        }
    
    @IBAction func touchDrumButton(){
        
        drumButton.setImage(UIImage(named: "drumImage"), for: .normal)
    }


}

