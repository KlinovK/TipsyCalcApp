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
    
    @IBOutlet weak var wayAmountLbl: UILabel!
    @IBOutlet weak var wayAmountSlider: UISlider!
    
    var tip = TipModel(billAmount: 0.0, tipPercent: 0.0, wayAmount: 0.0 )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTipCalculationValues()
        updateUI()
    }

  
    func setTipCalculationValues(){
        tip.tipPercent = Double(tipPercentageSlider.value)
        tip.billAmount = ((textField.text)! as NSString).doubleValue
        tip.calculateTip()
    }
    
    func updateUI(){
        tipLbl.text = String(format: "$%0.2f", tip.tipAmount)
        totalLbl.text = String(format: "$%0.2f", tip.totalAmount)
        tipPercentageLbl.text = "Tip:\(Int(tipPercentageSlider.value * 100))%"
        
    }
    
    
    func setWayAmountValues(){
      tip.wayAmount = Double(wayAmountSlider.value)
      tip.billAmount = ((textField.text)! as NSString).doubleValue
        tip.calculateWayToPay()
    }
    
    func updateUIforWayUnit(){
        
        
    }
    
    
    @IBAction func wayAmountWasChange(_ sender: Any) {
        
    }
    
    
    @IBAction func billAmountWasChange(_ sender: Any) {
        setTipCalculationValues()
        updateUI()
    }
    
    @IBAction func tipPercentageWsChanged(_ sender: Any) {
        
        setTipCalculationValues()
        updateUI()
    }
    
}

