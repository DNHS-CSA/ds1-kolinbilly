//
//  DistController.swift
//  SwiftPortfolio
//
//  Created by Szeto, Colin on 3/12/20.
//  Copyright © 2020 Szeto, Colin. All rights reserved.
//

import UIKit
class DistController: UIViewController {
    
    // IBOutlet connects to Storyboard items, I had problems with Drag
    
    //@IBOutlet weak var input: UITextField!//inches
    //@IBOutlet weak var area: UILabel!
    //@IBOutlet weak var perimeter: UILabel!

    
    // Loads at initialization
    override func viewDidLoad() {
        super.viewDidLoad()
        //let side = ("0.0","0.0","0.0","0.0")

        /*
        // Initialize Outlets
        side1.text = (side.0)
        side2.text = (side.1)
        area.text = (side.2)
        perimeter.text = (side.3)*/

    }

    // IBAction created with Drag from Storyboard
   @IBAction func calculate(sender: UIButton) {
        /*// let is for values that are not modified
        let s1 = Float(side1.text!) // Input value, !(Bang) avoids errors
        let s2 = Float(side2.text!)

        // Area
        let a1 = s1! * s2!
    
    //Perimeter calculation
        let p1 = (s1! * 2) + ( 2 * s2!)
    // Set calculation to screen
        //side3.text = String(s3)
       // print("Pyth  \(side3.text!)")
    area.text = String(a1)
    perimeter.text = String(p1)&*/

    
    }
}
