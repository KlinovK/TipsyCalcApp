//
//  ViewController.swift
//  TipsyCalcApp
//
//  Created by Константин Клинов on 6/27/18.
//  Copyright © 2018 Константин Клинов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var tipPercentageLbl: UILabel!
    @IBOutlet weak var tipPercentageSlider: UISlider!
    @IBOutlet weak var tipLbl: UILabel!
    @IBOutlet weak var totalLbl: UILabel!
    
    var tip = TipModel(billAmount: 0.0, tipPercent: 0.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

  
    @IBAction func billAmountWasChange(_ sender: Any) {
        print("my value changed")
    }
    
    @IBAction func tipPercentageWsChanged(_ sender: Any) {
        print(tipPercentageSlider.value)
    }
    
}

