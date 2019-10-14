//
//  ViewController.swift
//  CustomSwitch
//
//  Created by 정기욱 on 2019/10/14.
//  Copyright © 2019 kiwook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var buttonCenterX: NSLayoutConstraint!
    
    @IBOutlet weak var switchView: UIView!
    
    @IBOutlet weak var switchBtn: UIButton!
    
    @IBAction func switchAction(_ sender: UIButton) {
        
        UIView.animate(withDuration: 0.3) {
            if self.buttonCenterX.constant > 0 {
                self.buttonCenterX.constant -= 150
            } else {
                self.buttonCenterX.constant += 150
            }
            self.view.layoutIfNeeded()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        buttonCenterX.constant = -75
    }


}

