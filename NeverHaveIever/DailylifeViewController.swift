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
    let daily =             ["一人で旅行に行ったことがある","一人で回転寿司に行ったことがある","「明日こそは本気を出す！」が口ぐせだったことがある"              ,"音楽を聴きながらひざの上でエアードラムしたことがある"              ,"死にかけたことがある"           ,"幽霊を見たことがある","救急車で運ばれたことがことがある","テレビ/Youtubeに出演したことがある","お年寄りに席を譲らなかったことがある","家以外でノーパンで過ごしたことがある","海/風呂でおしっこをしたことがある","一日中お酒を飲んでいたことがある","くだらない迷信を信じたことがある","スマホを仰向けで使って、顔面に直撃したことがある","電車内でイヤホンが外れて大音量を流したことがある","アラームに設定した音楽が嫌いになったことがある"]

    // 学校・仕事
    let school = ["面接中に嘘をついたことがある","一生のお願いを乱用したことがある","徹夜するための仮眠で朝になったことがある","好きな人に意地悪をしたことがある","ノートの１ページ目だけ字を綺麗に書いたことがある","消しゴムのカスをこねてネリ消しをつくったことがある" ,"テストでカンニングしたことがある","元ヤンキーだったことがある","仮病で休んだことがある","年収500万以上は稼いだことがある","便所飯をしたことがある" ,"営業で心が折れたことがある","経費で私的流用したことがある","残業月60時間以上したことがある","会議中に寝たことがある","「す」の最初に出でくる予測変換は「すみません」","アルバイトをばっくれた（とんだ）ことがある","ランチで行列に45分、食事は15分だったことがある"]

    //恋愛
    let love =          ["自分よりも素敵な人がいると言われ、振られたことがある","映画/漫画のような恋をしたことがある","浮気した/されたことがある","今まで10人以上と付き合ったことがある","有名人と付き合ったことがある" ,"3年以上、恋愛が続いたことがある","好きじゃない人と付き合ったことがある","一ヶ月以内に別れたことがある","デートで大失敗したことがある","二次元の相手に本気で恋したことがある","他の人と付き合うために、恋人と別れたことがある","好きな人をみるだけでドキッとしたことがある","「返事はすぐにしちゃダメ」と誰かに聞いたことがある"             ,"同棲をしたことがある","恋愛依存になったことがある","好きな人のSNSをチェックして後悔したことがある"]
    
    // 大人
    let green = ["ラブホテルに行ったことがある","ナンパした/されたことがある","今まで10人以上と性体験したことがある","セフレがいたことがある"                  ,"一夜限りの熱い夜を過ごしたことがある" ,"性病に感染したことがある","一味違うプレーをしたことがある","SMプレーをしたことがある","なんかわからないけど、風俗に行ったことがある","恋人とAVを一緒に見たことがある","キスマつけた/つけられたことがある" ,"本番中に哲学的になったことがある","気持ち良くないが、気持ち良いふりをしたことがある" ,"公共の場でキスをしたことがある","無意識にムラムラしてきたことがある","複数でプレーしたことがある","エロい声を故意的に出したことがある","今までに何度もお持ち帰りした/されたことがある","酔い潰れて、、、"]

    //  おすすめ
    let recommendation = ["SNSで裏垢を作ったことがある","公共のトイレで水が流れなくて、困ったことがある" ,"じゃんけんで最初に出すのは決まって、「パー」である","笑った時に鼻水がドゥーンとでたことがある"   ,"精神科医に行ったことがある","出会い/婚活系アプリに登録したことがある","水と日本酒を間違えたことがある","歯磨き粉と洗顔を間違えたことがある","「きゃりーぱみゅぱみゅ」と噛まずに言うことができる","ミネラルウォーターを買うのを躊躇したことがある" ,"変なところから毛が生えてきたことがある","「あっち向いてホイ」で不意に斜めを向いたことがある" ,"一晩で10万円以上使ったことがある","自転車のペダル踏み外し、スネを強打したことがある" ,"ハリーポッターの本を全部読んだことがある","入力していると予測変換に気まずい言葉が出てくる","もうすでにこのアプリで嘘をついたことがある"]

    
    
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
        
        // cellのフォントの大きさ
        cell.textLabel!.font = UIFont.boldSystemFont(ofSize: 14.0)
        
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
