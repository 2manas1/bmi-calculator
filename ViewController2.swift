//
//  ViewController2.swift
//  BMI Calculator
//
//  Created by Manas on 12/11/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    var bmiValue: String?

    @IBOutlet weak var resultlabel: UILabel!
    
    @IBOutlet weak var advicelabel: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        resultlabel.text = bmiValue
        
    }
    
    
    
    @IBAction func recalculatebutton(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
    
    
}
