//
//  VideoViewController.swift
//  BmiCalculator2
//
//  Created by yesung shin on 2022/10/28.
//

import UIKit
import AVKit

class VideoViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        

        }
     
    @IBAction func playBtn(_ sender: UIButton) {
        let file:String? = Bundle.main.path(forResource: "BMI", ofType: "mp4")
        let url = NSURL(fileURLWithPath: file!)
        let playerController = AVPlayerViewController()
        let player = AVPlayer(url: url as URL)
        playerController.player = player
        self.present(playerController, animated: true)
        player.play()
    }
}
    



