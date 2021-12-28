//
//  ViewController.swift
//  sb_2_1_2
//
//  Created by Артем ШАЛИН on 28.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redUIView: UIView!
    @IBOutlet var yellowUIView: UIView!
    @IBOutlet var greenUIView: UIView!
    
    @IBOutlet var startButtonTitle: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redUIView.layer.cornerRadius = 100
        yellowUIView.layer.cornerRadius = 100
        greenUIView.layer.cornerRadius = 100
        
    }

    @IBAction func startButtonAction(_ sender: Any) {
        
        if redUIView.alpha == 1 {
            redUIView.alpha = 0.3
            yellowUIView.alpha = 1
        } else if yellowUIView.alpha == 1 {
            yellowUIView.alpha = 0.3
            greenUIView.alpha = 1
        } else if greenUIView.alpha == 1 {
            greenUIView.alpha = 0.3
            redUIView.alpha = 1
        } else {
            startButtonTitle.setTitle("NEXT", for: .normal)
            redUIView.alpha = 1
        }
    }
}

