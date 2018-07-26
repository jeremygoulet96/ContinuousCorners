//
//  RoundedView.swift
//  Toolkit
//
//  Created by Jérémy Goulet on 2018-07-25.
//  Copyright © 2018 Jérémy Goulet. All rights reserved.
//

import UIKit

@IBDesignable class RoundedView: UIView {}

extension UIView {
    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
    
    @IBInspectable
    var continuousCorners: Bool {
        get {
            return layer.infiniteCorners
        }
        set {
            layer.infiniteCorners = newValue
        }
    }
    
    @IBInspectable
    var hasShadow: Bool {
        get {
            return true
        }
        set {
            if layer.backgroundColor == UIColor.white.cgColor {
                layer.shadowColor = UIColor.black.cgColor
                layer.shadowOpacity = 0.05
            } else {
                layer.shadowColor = layer.backgroundColor
                layer.shadowOpacity = 0.20
            }
            self.layer.shadowOffset = CGSize(width: 0, height: 2)
            self.layer.shadowRadius = 4
        }
    }
}
