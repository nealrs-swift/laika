//
//  ViewController.swift
//  Laika
//
//  Created by Neal Shyam on 10/3/14.
//  Copyright (c) 2014 nealshyam.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var ageInput: UITextField!
    
    @IBAction func convertButton(sender: UIButton) {
        var age = Double((ageInput.text as NSString).doubleValue)*7
        
        ageInput.text = ""
        ageInput.resignFirstResponder()
        
        ageLabel.text = "\(age)" + " dog years"
        ageLabel.textColor = UIColor.blueColor()
    }
    
    
    
    @IBAction func realYears(sender: UIButton) {
        var age = Double((ageInput.text as NSString).doubleValue)
        ageInput.text = ""
        ageInput.resignFirstResponder()
        
        if age <= 2{
            age *= 10.5
        } else {
            age = (age-2)*4 + 21
        }
        
        ageLabel.text = "\(age)" + " dog years"
        ageLabel.textColor = UIColor.redColor()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

