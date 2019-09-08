//
//  ResultViewController.swift
//  NeverHaveIever
//
//  Created by SeitoYachimoto on 2019/09/02.
//  Copyright © 2019 谷地元　星斗. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBOutlet weak var yesLabel: UILabel!
    
    
    //    textFieldの値をresultLabelに持ってくる
    var result = ""
    
    //    yesCLickButtonの値をyesLabelに持ってくる
    var yes = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //    textFieldの値が出る
        resultLabel.text = result
    
        //    yesCLickButtonの値が出る
        yesLabel.text = "\(yes)"
    }
    

    
    
}
