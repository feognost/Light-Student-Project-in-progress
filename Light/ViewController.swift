//
//  ViewController.swift
//  Light
//
//  Created by Vladislav Daragan on 05.06.20.
//  Copyright © 2020 Vladislav Daragan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var lightOn = false
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        lightOn = !lightOn
        
        updateUI()
    }
    func updateUI() {
        view.backgroundColor = lightOn ? .white : .black
                       
                  }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    override var prefersStatusBarHidden: Bool {
        return true
    }
}


