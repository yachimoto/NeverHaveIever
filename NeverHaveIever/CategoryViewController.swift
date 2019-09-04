//
//  CategoryViewController.swift
//  NeverHaveIever
//
//  Created by SeitoYachimoto on 2019/08/30.
//  Copyright © 2019 谷地元　星斗. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController {

    
    @IBOutlet weak var dailyButton: UIButton!
    
    @IBOutlet weak var schoolButton: UIButton!
    
    @IBOutlet weak var loveButton: UIButton!
    
    @IBOutlet weak var greenButton: UIButton!
    
    @IBOutlet weak var recommendationButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        makeButtonDesign(button: dailyButton)
        
        makeButtonDesign(button: schoolButton)
        
        makeButtonDesign(button: loveButton)
        
        makeButtonDesign(button: greenButton)
        
        makeButtonDesign(button: recommendationButton)
        
    }
    
    
    @IBAction func dailyClickButton(_ sender: UIButton) {
        performSegue(withIdentifier: "toDaily", sender: 1)
    }
    
    
    @IBAction func schoolClickButton(_ sender: UIButton) {
        performSegue(withIdentifier: "toDaily", sender: 2)
    }
    
    @IBAction func loveClickButton(_ sender: UIButton) {
        performSegue(withIdentifier: "toDaily", sender: 3)
    }
    
    
    @IBAction func greenClickButton(_ sender: UIButton) {
        performSegue(withIdentifier: "toDaily", sender: 4)
    }
    
    
    @IBAction func recommendationClickButton(_ sender: UIButton) {
        performSegue(withIdentifier: "toDaily", sender: 5)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       let controller = segue.destination as! DailylifeViewController
        
        controller.selected = sender as! Int
    }
    
    // ボタンのデザインを作成
    func makeButtonDesign(button: UIButton!) {
        
        var topColor: UIColor
        var bottomColor: UIColor
        
        //グラデーションの開始色
        topColor = UIColor(red:86/255, green:128/255, blue:133/255, alpha:1)
        //グラデーションの終了色
        bottomColor = UIColor(red:220/255, green:158/255, blue:133/255, alpha:1)

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
