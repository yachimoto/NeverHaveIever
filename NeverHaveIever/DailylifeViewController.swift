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
    
    // 日常経験
    let daily = ["一人で旅行に行った","死にかけた","幽霊を見た","一晩で10万円以上使った","救急車で運ばれたことが","テレビorYoutubeに出演した","お年寄りに席を譲らなかった","家以外でノーパンで過ごした","水中(海、風呂、プール)でおしっこをした","一日中お酒を飲んでいた"]

    // 学校・仕事
    let school = ["テストでカンニングした","元ヤンキーだった","年収500万以上は稼いだ","便所飯をした","経費で私的流用した","会議中に寝た",
    "アルバイトをばっくれた（とんだ）","副業したことが"]

    //恋愛
    let love = ["映画or漫画のような恋をした","浮気したorされた","今まで10人以上と付き合った","有名人と付き合った",
                "一夜だけの恋をした","好きじゃない人と付き合った","一ヶ月以内に別れた","デートで大失敗した","二次元に恋したこと"]
    
    // エロ
    let green = ["ラブホテルに行った","今まで10人以上とセックスした","セフレがいた","性病に感染した","一味違うプレーをした","SMプレーをした","風俗に行った"]

    //  おすすめ
    let recommendation = ["裏垢を作った","烏龍茶と間違えてウイスキーを飲んだ","酔い潰れて、、、","精神科医に行った","出会い、婚活系アプリに登録した","fifteenとfiftyの発音を間違えた",
        "もうすでにこのアプリで嘘をついた"]

    
    
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
        self.show(top, sender: nil)
//        self.present(top, animated: true, completion: nil)
        
    }
    
    
}
