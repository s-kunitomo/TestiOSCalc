//
//  ViewController.swift
//  MyCalc01
//
//  Created by 國友翔次 on 2016/11/13.
//  Copyright © 2016年 com.kunitomo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var priceField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapButton(_ sender: UIButton!) {
        let text = sender.titleLabel?.text
        let value = priceField.text! + text!
        if let price = Int(value) {
            priceField.text = "\(price)"
        }
    }
    
    @IBAction func tapClearButton(_ sender: Any) {
        priceField.text = "0"
    }
    
    @IBAction func restart(segue :UIStoryboardSegue) {
        priceField.text = "0"
    }
    
    // 画面遷移時の処理
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // 次の画面を取り出す
        let viewController = segue.destination as! PercentViewController
        
        // 金額フィールドの文字列を数値に変換する
        if let price = Int(priceField.text!) {
            // 数値に変換した金額を次の画面に設定する
            viewController.price = price
        }
    }
}
