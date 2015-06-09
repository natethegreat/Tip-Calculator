//
//  ViewController.swift
//  Tips
//
//  Created by Nathanael Smith on 5/31/15.
//  Copyright (c) 2015 Nathanael Smith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var twoTotalLabel: UILabel!
    @IBOutlet weak var threeTotalLabel: UILabel!
    @IBOutlet weak var fourTotalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        billField.becomeFirstResponder() == true
        billField.tintColor = UIColor.blackColor()
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        twoTotalLabel.text = "$0.00"
        threeTotalLabel.text = "$0.00"
        fourTotalLabel.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        var billAmount = NSString(string: billField.text).doubleValue
        var tipPercentages = [0.18, 0.20, 0.22]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        var tip = billAmount * tipPercentage
        var total = billAmount + tip
        
        
//        tipLabel.text = "$\(tip)"
//        totalLabel.text = "$\(total)"
//        twoTotalLabel.text = "$\(total/2)"
//        threeTotalLabel.text = "$\(total/3)"
//        fourTotalLabel.text = "$\(total/4)"
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        twoTotalLabel.text = String(format: "$%.2f", total/2)
        threeTotalLabel.text = String(format: "$%.2f", total/3)
        fourTotalLabel.text = String(format: "$%.2f", total/4)
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
}

