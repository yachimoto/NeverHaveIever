//
//  ResultViewController.swift
//  NeverHaveIever
//
//  Created by SeitoYachimoto on 2019/09/02.
//  Copyright © 2019 谷地元　星斗. All rights reserved.
//

import UIKit
import Firebase

class ResultViewController: UIViewController {

    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var numLabel: UILabel!
    
    @IBOutlet weak var yesLabel: UILabel!
    
    @IBOutlet weak var bannerView: GADBannerView!
    
    // 広告ユニットID
    let AdMobID = "ca-app-pub-3940256099942544/2934735716"
    
    //    textFieldの値をresultLabelに持ってくる
    var result = ""
    //    yesCLickButtonの値をyesLabelに持ってくる
    var yes = 0
    //    numberLabelの値をnumLabelに持ってくる
    var num = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //    textFieldの値が出る
        resultLabel.text = result
    
        //    numberLabelの値が出る
        numLabel.text = num
        
        //    yesCLickButtonの値が出る
        yesLabel.text = "\(yes)"
        
        //   広告
        print("Google Mobile Ads SDK version: \(GADRequest.sdkVersion())")
        
        bannerView.adUnitID = AdMobID
        
        bannerView.rootViewController = self
        
        bannerView.load(GADRequest())
    
    }

    //    SNSシェア
    @IBAction func didClickShare(_ sender: UIButton) {
        let description1 = "#あるある"
        let description2 = "#あるある探検隊"
        let appName = "#あるあるないないゲーム"
        let url = ""
        let data = ["\(result)     \(num)人中\(yes)あるある！\n \(url)\n \(appName)            \(description1)    \(description2)"] as [Any]
        
        let controller = UIActivityViewController(activityItems: data, applicationActivities: nil)
        // iPadでシェアするとき、これがないとエラーになる
        controller.popoverPresentationController?.sourceView = view
        controller.popoverPresentationController?.sourceRect = CGRect(x: self.view.bounds.size.width / 2.0, y: self.view.bounds.size.height / 2.0, width: 1.0, height: 1.0)
        
        present(controller, animated: true, completion: nil)

        
    }
    
    
}
