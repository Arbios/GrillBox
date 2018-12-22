//
//  ViewController.swift
//  GrillBox
//
//  Created by ARBI BASHAEV on 28/11/2018.
//  Copyright © 2018 ARBI BASHAEV. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import Pastel

class ViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pastelView = PastelView(frame: view.bounds)
        
        // Custom Direction
        pastelView.startPastelPoint = .bottomLeft
        pastelView.endPastelPoint = .topRight
        
        // Custom Duration
        pastelView.animationDuration = 3.0
        
        // Custom Color
        pastelView.setColors([UIColor(red: 120/255, green: 69/255, blue: 35/255, alpha: 1),
                              UIColor(red: 224/255, green: 122/255, blue: 55/255, alpha: 1),
                              UIColor(red: 103/255, green: 55/255, blue: 24/255, alpha: 1)])
        
        pastelView.startAnimation()
        view.insertSubview(pastelView, at: 0)
    }
    
}


