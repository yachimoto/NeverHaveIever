//
//  ViewController.swift
//  NeverHaveIever
//
//  Created by SeitoYachimoto on 2019/08/23.
//  Copyright © 2019 谷地元　星斗. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    
    @IBOutlet weak var numberLabel: UILabel!
    
    var aruarucount = 0
    
    var nainaicount = 0

    var category = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.text = category
      
    }

    //  あるあるボタン
    @IBAction func yesClickButton(_ sender: UIButton) {
        
        //  アラート
        if textField.text == "" {
            let alert = UIAlertController(title: "早とちりですね", message: "質問をご入力ください", preferredStyle: .alert)
            present(alert, animated: true, completion: nil)
            //  通常の選択肢を作成する
            let yesAction = UIAlertAction(title: "はい", style: .default) { (UIAlertAction) in
            }
            //  作成した選択肢をアラート画面に追加する
            alert.addAction(yesAction)
            return
        }
        aruarucount += 1
        numberLabel.text = "\(nainaicount + aruarucount)"
        
        
        

    }
    
    //  ないないボタン
    @IBAction func noClickButton(_ sender: UIButton) {
        
        //  アラート
        if textField.text == "" {
            let alert = UIAlertController(title: "おっちょこちょいですね", message: "質問をご入力ください", preferredStyle: .alert)
            present(alert, animated: true, completion: nil)
            //  通常の選択肢を作成する
            let yesAction = UIAlertAction(title: "はい", style: .default) { (UIAlertAction) in
            }
            //  作成した選択肢をアラート画面に追加する
            alert.addAction(yesAction)
            return
        }
        
        nainaicount += 1
        numberLabel.text = "\(nainaicount + aruarucount)"

    }
    
    //  結果ボタン
    @IBAction func resultClickButton(_ sender: UIButton) {
       
        //  アラート
        if textField.text == "" {
        let alert = UIAlertController(title: "結果出る訳ありませんね", message: "質問をご入力ください", preferredStyle: .alert)
        present(alert, animated: true, completion: nil)
        //  通常の選択肢を作成する
        let yesAction = UIAlertAction(title: "はい", style: .default) { (UIAlertAction) in
        }
        //  作成した選択肢をアラート画面に追加する
            alert.addAction(yesAction)
        }
    
        // textFieldをresultLabelに移す画面遷移
        // storyboardのインスタンス取得
        let storyboard: UIStoryboard = self.storyboard!
        // 遷移先ViewControllerのインスタンス取得
        let end = storyboard.instantiateViewController(withIdentifier: "end") as! ResultViewController
        // ①値の設定
        end.result = textField.text!
        end.yes = aruarucount
        // ③画面遷移
        self.present(end, animated: true, completion: nil)
    }
    
}
