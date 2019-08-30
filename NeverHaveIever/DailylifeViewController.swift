//
//  DailylifeViewController.swift
//  NeverHaveIever
//
//  Created by SeitoYachimoto on 2019/08/30.
//  Copyright © 2019 谷地元　星斗. All rights reserved.
//

import UIKit

class DailylifeViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    let data = ["1","2","3"]
    
    // 日常用
    let daily = ["D1","D2","D3"]

    // 学校・仕事
    let school = ["S1","S2","S3"]

    //恋愛
    let love = ["L1","L2","L3"]
    
    // エロ
    let green = ["G1","G2","G3"]

    //  おすすめ
    let recommendation = ["R1","R2","R3"]

    
    
    var selected = 0
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
//        カテゴリーごとに画面切り替わる設定
        if selected == 1 {
            return daily.count
        } else if selected == 2 {
            return school.count
        } else if selected == 3 {
            return love.count
        } else if selected == 4 {
            return green.count
        } else if selected == 5 {
            return recommendation.count
        }
        
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let label = cell.viewWithTag(1) as! UILabel
        
        if selected == 1 {
            label.text = daily [indexPath.row]
        } else if selected == 2 {
            label.text = school [indexPath.row]
        } else if selected == 3 {
            label.text = love [indexPath.row]
        } else if selected == 4 {
            label.text = green [indexPath.row]
        } else if selected == 5 {
            label.text = recommendation [indexPath.row]
        }
        
        return cell
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
  
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var value = ""
        
//        tableViewに移動させるための設定
        if selected == 1 {
            value = daily [indexPath.row]
        } else if selected == 2 {
            value = school [indexPath.row]
        } else if selected == 3 {
            value = love [indexPath.row]
        } else if selected == 4 {
            value = green [indexPath.row]
        } else if selected == 5 {
            value = recommendation [indexPath.row]
        }
        
        // ①storyboardのインスタンス取得
        let storyboard: UIStoryboard = self.storyboard!
        
        // ②遷移先ViewControllerのインスタンス取得
        let top = storyboard.instantiateViewController(withIdentifier: "top") as! ViewController
        
        top.category = value
        
        // ③画面遷移
        self.present(top, animated: true, completion: nil)
        
    }
    
    
}
