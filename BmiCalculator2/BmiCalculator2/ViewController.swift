//
//  ViewController.swift
//  BmiCalculator2
//
//  Created by yesung shin on 2022/10/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblHeight: UILabel!
    @IBOutlet weak var lblWeight: UILabel!
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var lblImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        lblResult.layer.masksToBounds = true
        lblResult.layer.cornerRadius = 20
    }
    
    
    @IBAction func bmiBtn(_ sender: UIButton) {
        
        if lblHeight.text != nil && lblWeight.text != nil {
            
            let height = Double(lblHeight.text!)!
            let weight = Double(lblWeight.text!)!
            let bmi = weight/(height*height*0.0001)
            let shortendBmi = String(format: "%.1f", bmi)
            var body = ""
            
            if bmi > 35 {
                body = "Extremely Obese"
            } else if bmi >= 30.0 && bmi < 34.9 {
                body = "Obese"
            } else if bmi >= 25 && bmi < 29.9 {
                body = "Overweight"
            } else if bmi >= 18.5 && bmi < 24.9 {
                body = "Normal Weight"
            } else {
                body = "Underweight"
            }
            
            lblResult.text = "BMI:\(shortendBmi), Result: \(body)"
            
        } else {
            lblResult.text = "Put your Data!"
        }
        
       
        
        let imageGroup : Array<UIImage> = [UIImage(named: "1.jpg")!, UIImage(named: "2.jpg")!, UIImage(named: "3.jpg")!]
        var randomNum = Int(arc4random_uniform(3))
        let assignedNum = randomNum
        lblImageView.image = imageGroup[assignedNum]
    }
    
}

