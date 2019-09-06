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
    let daily = ["一人で旅行に行った"
                ,"死にかけた"
                ,"幽霊を見た"
            ,"救急車で運ばれたことが","テレビ/Youtubeに出演した","お年寄りに席を譲らなかった","家以外でノーパンで過ごした","海/風呂/プールでおしっこをした","一日中お酒を飲んでいた","くだらない迷信を信じた","笑った時に鼻水がドゥーンした","電車内でイヤホンが外れて大音量を流した","アラームに設定した音楽が嫌いになった"]

    // 学校・仕事
    let school = ["面接中に嘘をついた","一生のお願いを乱用した","「私よく天然って言われるけど」ていう人にムカついた","好きな人に意地悪をした","テストでカンニングした","元ヤンキーだった","年収500万以上は稼いだ","便所飯をした","バレンタインチョコをもらえなかった"
        ,"経費で私的流用した","会議中に寝た",
    "アルバイトをばっくれた（とんだ）","副業したことが"]

    //恋愛
    let love = ["映画or漫画のような恋をした"
        ,"浮気した/された","今まで10人以上と付き合った","有名人と付き合った" ,"一夜だけの関係を持った","好きじゃない人と付き合った","一ヶ月以内に別れた","デートで大失敗した","二次元に恋したこと","やっぱり「恋は盲目」だなあって思った","ちょっとみただけでドキッてした","好きな人にLINEを送るのに慎重になりすぎた","同棲をした"]
    
    // エロ
    let green = ["ラブホテルに行った","今まで10人以上と性体験した","セフレがいた","性病に感染した","一味違うプレーをした","SMプレーをした","なんかわからないけど、風俗に行った"
    ,"事後、パンツ無くなって探した","キスマつけてほしいのに、つけてくれなかった"
        ,"「なぜ腰を振っているのか」と哲学的になった"
        ,"気持ち良くないけど、気持ち良いふりをした"
        ,"カルピス、牛乳、練乳で何かを想像した","無意識にムラムラしてきた"]

    //  おすすめ
    let recommendation = ["裏垢を作った","公共のトイレで水が流れなくて、困った","酔い潰れて、、、","精神科医に行った","出会い、婚活系アプリに登録した","水と日本酒を間違えた","カルピス、牛乳、練乳で何かを想像した","なんかはわからないけど、涙が勝手に流れた"
    ,"自分しか知らないバンドが人気になり、寂しくなった","乗車位置でないところに立ち、後ろに列ができた","一晩で10万円以上使った","友達の「秘密だよ」って話を秘密にしなかった","もうすでにこのアプリで嘘をついた"]

    
    
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
        
        let label = cell.textLabel!
        
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
