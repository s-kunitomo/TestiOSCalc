//
//  PercentViewController.swift
//  MyCalc01
//
//  Created by 國友翔次 on 2016/11/13.
//  Copyright © 2016年 com.kunitomo. All rights reserved.
//

import UIKit

class PercentViewController: UIViewController {
    
    var price: Int = 0
    
    @IBOutlet weak var percentField: UITextField!
    
    @IBAction func tapButton(_ sender: UIButton) {
        let text = sender.titleLabel?.text
        let value = percentField.text! + text!
        if let percent = Int(value) {
            percentField.text = "\(percent)"
        }
    }
    
    @IBAction func tapClearButton(_ sender: Any) {
        percentField.text = "0"
    }
    
    // 画面遷移時の処理
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // 次の画面を取り出す
        let viewController = segue.destination as! ResultViewController
        
        // 金額フィールドの文字列を数値に変換する
        viewController.price = price
        if let percent = Int(percentField.text!) {
            // 数値に変換した金額を次の画面に設定する
            viewController.percent = percent
        }
    }
}
