//
//  ViewController.swift
//  BmiCalculator2
//
//  Created by yesung shin on 2022/10/20.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var lblHeight: UITextField!
    @IBOutlet var lblWeight: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var lblImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        lblResult.layer.masksToBounds = true
        lblResult.layer.cornerRadius = 20
    }
    
    
    @IBAction func bmiBtn(_ sender: UIButton) {
        
        if lblHeight.text == ""  || lblWeight.text == "" {
            
            lblResult.text = "Put your Data!"
            
        } else {
            
            let height = Double(lblHeight.text!)!
            let weight = Double(lblWeight.text!)!
            let bmi = weight/(height*height*0.0001)
            let shortendBmi = String(format: "%.1f", bmi)
            var body = ""
            var color = UIColor.white
            
            if bmi > 35 {
                body = "Extremely Obese"
                color = UIColor(displayP3Red: 1.0, green: 0.0, blue: 0.0, alpha: 0.7)
            } else if bmi >= 30.0 && bmi < 34.9 {
                body = "Obese"
                color = UIColor(displayP3Red: 0.7, green: 0.0, blue: 0.0, alpha: 0.7)
            } else if bmi >= 25 && bmi < 29.9 {
                body = "Overweight"
                color = UIColor(displayP3Red: 0.5, green: 0.0, blue: 0.0, alpha: 0.7)
            } else if bmi >= 18.5 && bmi < 24.9 {
                body = "Normal Weight"
                color = UIColor(displayP3Red: 0.0, green: 0.5, blue: 0.0, alpha: 0.7)
            } else {
                body = "Underweight"
                color = UIColor(displayP3Red: 0.0, green: 0.0, blue: 0.5, alpha: 0.7)
            }
            
            lblResult.text = "BMI:\(shortendBmi), Result: \(body)"
            lblResult.backgroundColor = color
        }
        
       
        
        let imageGroup : Array<UIImage> = [UIImage(named: "1.jpg")!, UIImage(named: "2.jpg")!, UIImage(named: "3.jpg")!]
        var randomNum = Int(arc4random_uniform(3))
        let assignedNum = randomNum
        lblImageView.image = imageGroup[assignedNum]
    }
    
}

