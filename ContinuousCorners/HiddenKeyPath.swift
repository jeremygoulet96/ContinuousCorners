//
//  hiddenKeyPath.swift
//  ContinuousCorners
//
//  Created by Jérémy Goulet on 2018-07-25.
//  Copyright © 2018 Jérémy Goulet. All rights reserved.
//

import UIKit

let keyPath = "continuous" + "Corners"

extension CALayer {
    var infiniteCorners: Bool {
        get { return value(forKeyPath: keyPath) as! Bool }
        set { setValue(newValue, forKeyPath: keyPath) }
    }
}
