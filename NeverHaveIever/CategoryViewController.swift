//
//  CategoryViewController.swift
//  NeverHaveIever
//
//  Created by SeitoYachimoto on 2019/08/30.
//  Copyright © 2019 谷地元　星斗. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func dailyButton(_ sender: UIButton) {
        performSegue(withIdentifier: "toDaily", sender: 1)
    }
    
    
    @IBAction func schoolButton(_ sender: UIButton) {
        performSegue(withIdentifier: "toDaily", sender: 2)
    }
    
    @IBAction func loveButton(_ sender: UIButton) {
        performSegue(withIdentifier: "toDaily", sender: 3)
    }
    
    
    @IBAction func greenButton(_ sender: UIButton) {
        performSegue(withIdentifier: "toDaily", sender: 4)
    }
    
    
    @IBAction func recommendationButton(_ sender: UIButton) {
        performSegue(withIdentifier: "toDaily", sender: 5)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       let controller = segue.destination as! DailylifeViewController
        
        controller.selected = sender as! Int
    }
}
