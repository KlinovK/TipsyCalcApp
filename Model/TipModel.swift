//
//  TipModel.swift
//  TipsyCalcApp
//
//  Created by Константин Клинов on 6/27/18.
//  Copyright © 2018 Константин Клинов. All rights reserved.
//

import Foundation

class TipModel {
    
    private var _billAmount: Double = 0
    private var _tipPercent: Double = 0
    private var _tipAmount: Double = 0
    private var _totalAmount: Double = 0
    private var _wayAmount: Double = 0
    private var _myPay: Double = 0

    var billAmount: Double {
    get {
        return _billAmount
        }
        set {
            _billAmount = newValue
        }
    }
    var tipPercent: Double {
        get {
            return _tipPercent
        }
        set {
            _tipPercent = newValue
        }
    }
    
    var wayAmount: Double {
        get {
            return _wayAmount
        }
        set {
            _wayAmount = newValue
        }
    }
    
    var myPay: Double {
        return _myPay
    }
    
    
    var tipAmount: Double {
        return _tipAmount
    }
    var totalAmount: Double {
        return _totalAmount
    }

    init(billAmount: Double, tipPercent: Double, myPay: Double){
        self._billAmount = billAmount
        self._tipPercent = tipPercent
        self._myPay = myPay
    }
    
    func calculateTip() {
        _tipAmount = billAmount * tipPercent
        _totalAmount = billAmount + tipAmount
    }
    
    func calculateMyPay() {
        _myPay = totalAmount / wayAmount
    }
}
