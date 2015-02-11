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
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    
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
        let numberFromTextField = mensShoeSizeTextField.text.toInt()
        var integerFromTextField = numberFromTextField!
        
        // add conversion factor
        let conversionConstant = 30
        integerFromTextField += conversionConstant
        
        // unhide label and show result
        mensConvertedShoeSizeLabel.hidden = false
        mensConvertedShoeSizeLabel.text = "\(integerFromTextField)"
        
        // clear text field and close keyboard
        mensShoeSizeTextField.text = ""
        mensShoeSizeTextField.resignFirstResponder()
    }

}

