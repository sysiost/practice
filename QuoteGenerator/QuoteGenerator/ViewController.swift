//
//  ViewController.swift
//  QuoteGenerator
//
//  Created by yesung shin on 2022/11/03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var quotesView: UILabel!
    @IBOutlet weak var autorView: UILabel!
    
    let sayings = [Words(contents: "The greatest glory in living lies not in never falling, but in rising every time we fall", autorName: "Nelson Mandela"),Words(contents: "The way to get started is to quit talking and begin doing", autorName: "Walt Disney"), Words(contents: "If life were predictable it would cease to be life, and be without flavor.", autorName: "Eleanor Roosevelt"),Words(contents: "If you look at what you have in life, you'll always have more. If you look at what you don't have in life, you'll never have enough.", autorName: "Oprah Winfrey"), Words(contents: "If you set your goals ridiculously high and it's a failure, you will fail above everyone else's success.", autorName: "James Cameron"),Words(contents: "Life is what happens when you're busy making other plans.", autorName: "John Lennon")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func generateBtn(_ sender: UIButton) {
        
        let randomNum = Int(arc4random_uniform(6))
        let qoute = sayings[randomNum]
        self.quotesView.text = qoute.contents
        self.autorView.text = qoute.autorName
    }
}

