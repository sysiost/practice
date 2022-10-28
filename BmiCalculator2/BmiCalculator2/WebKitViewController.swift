//
//  WebKitViewController.swift
//  BmiCalculator2
//
//  Created by yesung shin on 2022/10/28.
//

import UIKit
import WebKit

class WebKitViewController: UIViewController {

    @IBOutlet var webKit: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func googleBtn(_ sender: UIButton) {
        guard let url = URL(string: "https://m.google.com") else {return}
        let request = URLRequest(url: url)
        webKit.load(request)
        
    }

}
