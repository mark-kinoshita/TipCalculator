//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Mark Kinoshita on 1/26/18.
//  Copyright © 2018 Mark Kinoshita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var sizeControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    @IBAction func calculateTip(_ sender: Any) {
        let tipPercentages = [0.10, 0.15, 0.20, 0.25, 0.30]
        let partySize = [1.0, 2.0, 3.0, 4.0, 5.0]
        let bill = Double(billField.text!) ?? 0
        let tip = (bill * tipPercentages[tipControl.selectedSegmentIndex]) / partySize[sizeControl.selectedSegmentIndex]
        let total = tip + bill
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
    

}

