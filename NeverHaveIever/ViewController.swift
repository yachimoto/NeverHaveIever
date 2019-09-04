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
    
    
    @IBOutlet weak var yesButton: UIButton!
    
    
    @IBOutlet weak var noButton: UIButton!
    
    
    @IBOutlet weak var resultButton: UIButton!
    
    
    @IBOutlet weak var categoryButton: UIButton!
    
    
    var aruarucount = 0
    
    var nainaicount = 0
    
    

    var category = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.text = category
        
        makeButtonDesign(button: yesButton)
        
        makeButtonDesign(button: noButton)
        
        makeButtonDesign(button: resultButton)
        
        makeButtonDesign(button: categoryButton)

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
 
    // ボタンのデザインを作成
    func makeButtonDesign(button: UIButton!) {
        
        var topColor: UIColor
        var bottomColor: UIColor

        
        
        if button == yesButton {
            /////////////////赤色
            //グラデーションの開始色
            topColor = UIColor(red:186/255, green:58/255, blue:33/255, alpha:1)
            //グラデーションの終了色
            bottomColor = UIColor(red:130/255, green:58/255, blue:63/255, alpha:1)
            
        } else if button == resultButton {
            //グラデーションの開始色
            topColor = UIColor(red:233/255, green:205/255, blue:143/255, alpha:1)
            //グラデーションの終了色
            bottomColor = UIColor(red:210/255, green:178/255, blue:100/255, alpha:1)
        } else if button == categoryButton {
            //グラデーションの開始色
            topColor = UIColor(red:56/255, green:58/255, blue:53/255, alpha:1)
            //グラデーションの終了色
            bottomColor = UIColor(red:80/255, green:78/255, blue:83/255, alpha:1)
        } else {
            /////////////////青色
            //グラデーションの開始色
            topColor = UIColor(red:108/255, green:114/255, blue:168/255, alpha:1)
            //グラデーションの終了色
            bottomColor = UIColor(red:66/255, green:103/255, blue:178/255, alpha:1)
            /////////////////青色
            
        }
        
        
        //グラデーションの色を配列で管理
        let gradientColors: [CGColor] = [topColor.cgColor, bottomColor.cgColor]
        
        //グラデーションレイヤーを作成
        let gradientLayer: CAGradientLayer = CAGradientLayer()
        
        //グラデーションの色をレイヤーに割り当てる
        gradientLayer.colors = gradientColors
        //グラデーションレイヤーをスクリーンサイズにする
        gradientLayer.frame = button.bounds
        
        // 角度を変更する
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        
        //グラデーションレイヤーをビューの一番下に配置
        button.layer.insertSublayer(gradientLayer, at: 0)
        
        //        button.backgroundColor = .black
        button.setTitleColor(UIColor.white, for: UIControl.State.normal)  // 4
        button.layer.cornerRadius = 18
        button.clipsToBounds = true
    }
    
    
    
}
