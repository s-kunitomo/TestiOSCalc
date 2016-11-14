//
//  ResultViewController.swift
//  MyCalc01
//
//  Created by 國友翔次 on 2016/11/13.
//  Copyright © 2016年 com.kunitomo. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var price: Int = 0
    var percent: Int = 0

    @IBOutlet weak var resultField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 割引率を算出する
        let percentValue = Float(percent) / 100
        
        // 割引額を算出する
        let waribikiPrice = Float(price) * percentValue
        
        // 割引後の価格を算出する
        let percentOffPrice = price - Int(waribikiPrice)
        
        // 結果を表示する
        resultField.text = "\(percentOffPrice)"
    }
}
