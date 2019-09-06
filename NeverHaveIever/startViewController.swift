//
//  startViewController.swift
//  NeverHaveIever
//
//  Created by SeitoYachimoto on 2019/09/06.
//  Copyright © 2019 谷地元　星斗. All rights reserved.
//

import UIKit
import RevealingSplashView

class startViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let revealingSplashView = RevealingSplashView(iconImage: UIImage(named: "ItunesArtwork")!,iconInitialSize: CGSize(width: 100, height: 100), backgroundColor: UIColor(red:255, green:255, blue:255, alpha:1.0))
        
        //Adds the revealing splash view as a sub view
        self.view.addSubview(revealingSplashView)
        
        //Starts animation
        revealingSplashView.startAnimation(){
           
         self.performSegue(withIdentifier: "toHome", sender: nil)
        }
        
    }
    


}
