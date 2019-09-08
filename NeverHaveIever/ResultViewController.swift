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
    
    @IBOutlet weak var numLabel: UILabel!
    
    @IBOutlet weak var yesLabel: UILabel!
    
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
    }

}
