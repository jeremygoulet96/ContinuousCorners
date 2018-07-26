//
//  ViewController.swift
//  ContinuousCorners
//
//  Created by Jérémy Goulet on 2018-07-25.
//  Copyright © 2018 Jérémy Goulet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainSquare: RoundedView!
    @IBOutlet weak var continuousCornersSwitch: UISwitch!
    @IBOutlet weak var cornerRadiusTextField: UITextField!

    @IBAction func changeCornerRadius(_ sender: Any) {
        let cornerRadiusText = cornerRadiusTextField.text
        var cornerRadius = CGFloat(0)
        
        if cornerRadiusText != "" {
            cornerRadius = CGFloat(truncating: NumberFormatter().number(from: cornerRadiusText!)!)
        }
        mainSquare.cornerRadius = cornerRadius
    }
    
    @IBAction func tapSwitch(_ sender: Any) {
        changeContinuousCorners()
    }
    
    func changeContinuousCorners() {
        if continuousCornersSwitch.isOn {
            mainSquare.continuousCorners = true
        } else {
            mainSquare.continuousCorners = false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        changeContinuousCorners()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

