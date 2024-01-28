//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var bmivalue = "0.0"
    
    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var weight: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var slider2: UISlider!
    
    
    @IBAction func sliderheight(_ sender: UISlider) {
        // we will obtain the sliderheight value and equate it to heightlabel
        let a = String(format:"%.2f",sender.value)
        height.text = "\(a)m"
    }
    
    
    
    @IBAction func sliderheight2(_ sender: UISlider) {
        // we will obtain the sliderheight value and equate it to weightlabel
        let b = String(format:"%.0f",sender.value)
        weight.text = "\(b)kg"
    }
    
    
    @IBAction func calculatebutton(_ sender: UIButton) {
        
        //here we will calculate the value of bmi
        
        let h = slider.value
        let w = slider2.value
        
        let bmi = w/(h*h)
        
        bmivalue = String(format: "%.1f", bmi)
        
        self.performSegue(withIdentifier: "gotoresult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoresult"{
            let destinationVC =  segue.destination as! ViewController2
            destinationVC.bmiValue = bmivalue
        }
    }
    
}

