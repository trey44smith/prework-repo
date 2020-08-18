//
//  ViewController.swift
//  tip
//
//  Created by Trey Smith on 7/21/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var billField: UITextField!
    @IBOutlet var tipLael: UILabel!
    @IBOutlet var totalLabel: UILabel!
    @IBOutlet var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        print("Hello")
        
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        //get the bill amount
        let bill = Double(billField.text!) ?? 0
        
        //calc tip/total
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill  * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //update tip/total label
        tipLael.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

