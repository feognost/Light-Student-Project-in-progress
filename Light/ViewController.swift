//
//  ViewController.swift
//  Light
//
//  Created by Vladislav Daragan on 05.06.20.
//  Copyright © 2020 Vladislav Daragan. All rights reserved.
//
import AVFoundation
import UIKit

class ViewController: UIViewController {
    
    var lightOn = true
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        lightOn = !lightOn
        
        updateView()
    }
    
    func updateView() {
        let device = AVCaptureDevice.default(for: AVMediaType.video)
        
        if let dev = device, dev.hasTorch {
            view.backgroundColor = .black
            do {
                try dev.lockForConfiguration()
                dev.torchMode = lightOn ? .on : .off
                dev.unlockForConfiguration()
            } catch {
                print(error)
            }
        } else {
        view.backgroundColor = lightOn ? .white : .black
        }
                  }
    
   
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLoad() {
           super.viewDidLoad()
           
           updateView()
       }
}


