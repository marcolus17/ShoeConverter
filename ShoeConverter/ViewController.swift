//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Nicholas Markworth on 2/10/15.
//  Copyright (c) 2015 Nick Markworth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    @IBOutlet weak var womensConvertedShoeSizeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        // grab input and change to integer
        let sizeFromTextField = mensShoeSizeTextField.text.toInt()!
        
        // conversion factor
        let conversionConstant = 30
        
        // unhide label and show result
        mensConvertedShoeSizeLabel.hidden = false
        mensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European shoe size"
        
        // clear text field and close keyboard
        mensShoeSizeTextField.text = ""
        mensShoeSizeTextField.resignFirstResponder()
    }

    @IBAction func womensConvertButtonPressed(sender: UIButton) {
        let sizeFromTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue)
        let conversionConstant = 30.5
        
        womensConvertedShoeSizeLabel.hidden = false
        womensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant) in European shoe size"
        
        womensShoeSizeTextField.text = ""
        womensShoeSizeTextField.resignFirstResponder()
    }
}

