//
//  DistController.swift
//  SwiftPortfolio
//
//  Created by Szeto, Colin on 3/12/20.
//  Copyright © 2020 Szeto, Colin. All rights reserved.
//

import UIKit
class DistController: UIViewController {
    
    // IBOutlet connects to Storyboard items, I had problems with ctrl drag, note that start with items on storyboard, then drag them into the .swft file
    //all of the labels
    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var kilometer: UITextField!
    @IBOutlet weak var meter: UITextField!
    @IBOutlet weak var centimeter: UITextField!
    @IBOutlet weak var millimeter: UILabel!
    @IBOutlet weak var micrometer: UITextField!
    @IBOutlet weak var nanoMeter: UILabel!
    @IBOutlet weak var mile: UITextField!
    @IBOutlet weak var yard: UITextField!
    @IBOutlet weak var foot: UITextField!
    @IBOutlet weak var nauticalMile: UILabel!
    @IBOutlet weak var inch: UILabel!

    
    // Loads at initialization
    override func viewDidLoad() {
        super.viewDidLoad()
        let dist = ("0.0","0.0","0.0","0.0","0.0","0.0","0.0","0.0","0.0","0.0","0.0") // the labels to 0.0
        
        //initilize outlets
        input.text = (dist.0)//this is inches
        kilometer.text = (dist.1) //setting label = 0.0
        meter.text = (dist.2)//setting label = 0.0
        centimeter.text = (dist.3)//setting label = 0.0
        millimeter.text = (dist.4)//setting label = 0.0
        micrometer.text = (dist.5)//setting label = 0.0
        mile.text = (dist.6)//setting label = 0.0
        yard.text = (dist.7)//setting label = 0.0
        foot.text = (dist.8)//setting label = 0.0
        inch.text = (dist.0)//setting label = 0.0
        nauticalMile.text = (dist.9)//setting label = 0.0
        nanoMeter.text = (dist.10)//setting label = 0.0

    }

    // IBAction created with Drag from Storyboard
   @IBAction func calculate(sender: UIButton) {
        
       let inpt1 = Float(input.text!) //this is to allow the string to be used in the calculations

        // Area
        let a1 = inpt1! /  39370 //inch to km
        let a2 = inpt1! /  39.37 //inch to meter
        let a3 = inpt1! *  2.54 //inch to cm
        let a4 = inpt1! *  25.4 //inch to mm
        let a5 = inpt1! *  25400 //inch to micrometer
        let a10 = a5 * 1000 //micro meter to nanoMeter
        let a8 = inpt1! / 12 //in to ft
        let a7 = a8 / 3 //ft to yrd
        let a6 = a7 / 1760 //yrd to mile
        let a9 = a6 / 1.151 //mile to natuical mile
        let a11 = inpt1! //1:1 conversion for inches
        
    // Set calculation to screen
    inch.text = String(a11)
    kilometer.text = String(a1)
    meter.text = String(a2)
    centimeter.text = String(a3)
    millimeter.text = String(a4)
    micrometer.text = String(a5)
    mile.text = String(a6)
    yard.text = String(a7)
    foot.text = String(a8)
    nauticalMile.text = String(a9)
    nanoMeter.text = String(a10)

    }
}
