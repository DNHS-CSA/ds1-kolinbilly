//
//  PythagController.swift
//  SwiftPortfolio
//
//  Created by Szeto, Colin on 3/11/20.
//  Copyright © 2020 Szeto, Colin. All rights reserved.
//

import UIKit
class PythagController: UIViewController {
    
    // IBOutlet connects to Storyboard items, I had problems with Drag
    
    @IBOutlet weak var side1: UITextField!
    @IBOutlet weak var side2: UITextField!
    @IBOutlet weak var side3: UILabel!

    
    // Loads at initialization
    override func viewDidLoad() {
        super.viewDidLoad()
        //outlet values
        let side = ("0.0","0.0","0.0") //here is ab tuple

        // Initialize Outlets
        side1.text = (side.0)//leg 1
        side2.text = (side.1)//leg 2
        side3.text = (side.2)//hypotonuse
   
    }

    // IBAction created with Drag from Storyboard
   @IBAction func calculate(sender: UIButton) {
        // let is for values that are not modified
    
        let s1 = Float(side1.text!) // Input value, !(Bang) avoids errors
        let s2 = Float(side2.text!)
    
        // Pythagorean Calculation
        let s3 = sqrt( (s1! * s1!) + (s2! * s2!) )


        // Set calculation to screen
        side3.text =  String(s3)
        print("Pyth  \(side3.text!)")
    
    }
}
