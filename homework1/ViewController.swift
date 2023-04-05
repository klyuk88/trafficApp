//
//  ViewController.swift
//  homework1
//
//  Created by Илья Клюковский on 05.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var trafficIndex = 0

    @IBOutlet var startBtn: UIButton!
    @IBOutlet var trafficBtns: [UIView]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let trafficBtns = trafficBtns {
            for item in trafficBtns {
                item.alpha = 0.5
                item.layer.cornerRadius = 50
            }
        }
    }
    
    @IBAction func startBtnHandler(_ sender: UIButton) {
        if let trafficBtns = trafficBtns {
            startBtn.setTitle("Next", for: .normal)
            if trafficIndex <= trafficBtns.count - 1 {
                trafficBtns[trafficIndex].alpha = 1
                trafficIndex += 1
            } else {
                startBtn.setTitle("Start", for: .normal)
                trafficIndex = 0
                for btn in trafficBtns {
                    btn.alpha = 0.5
                }
                return
            }
        }
    }
    


}

