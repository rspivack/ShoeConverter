//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Robert E Spivack on 10/11/14.
//  Copyright (c) 2014 Robert E. Spivack. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    
    
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    
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
        
//        let sizeFromTextField = mensShoeSizeTextField.text
//        let numberFromTextField = sizeFromTextField.toInt()
//        var integerFromTextField = numberFromTextField!
        
        
        
        let sizeFromTextField = mensShoeSizeTextField.text.toInt()!
        
        
//        let conversionConstant = 30
//        integerFromTextField += conversionConstant
//        let stringWithUpdatedShoeSize = "\(integerFromTextField)"
//        mensConvertedShoeSizeLabel.text = stringWithUpdatedShoeSize
//        mensConvertedShoeSizelabel.hidden = false
        
        let conversionConstant = 30
        mensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"
        mensConvertedShoeSizeLabel.hidden = false
        
    }

    @IBAction func convertWomensShoeSizeButtonPressed(sender: UIButton) {
        
        let sizeFromTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue)
        
        let conversionConstant = 30.5
        
        
        womensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"
        
        womensConvertedShoeSizeLabel.hidden = false
        
        
    }
    
    
    
    
    
}

