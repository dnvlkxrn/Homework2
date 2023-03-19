//
//  ViewController.swift
//  Homework2
//
//  Created by Danila Kornev on 19.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var pushButton: UIButton!
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pushButton.setTitle("Start", for: .normal)
        redLight.layer.cornerRadius = 0.5 * redLight.layer.frame.width
        yellowLight.layer.cornerRadius = redLight.layer.cornerRadius
        greenLight.layer.cornerRadius = redLight.layer.cornerRadius
    }


    @IBAction func pushButtonDidTapped() {
        pushButton.setTitle("Next", for: .normal)
    
        if redLight.alpha == 1 {
            redLight.alpha = 0.3
            yellowLight.alpha = 1
        } else if yellowLight.alpha == 1 {
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
        } else { greenLight.alpha = 0.3
            redLight.alpha = 1
        }
    }
}

