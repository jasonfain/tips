//
//  ViewController.swift
//  tips
//
//  Created by Jason Fain on 9/14/15.
//  Copyright © 2015 Jason Fain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tipLabel.text = "$0.00"
        totalAmount.text = "$0.00"
    }

    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var totalAmount: UILabel!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        
        var billAmount = NSString(string: billField.text!).doubleValue
        var tip = billAmount * 0.2
        var total = billAmount + tip
        tipLabel.text = "$\(tip)"
        totalAmount.text = "$\(total)"
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }

}

