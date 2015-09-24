//
//  BezierPathsView.swift
//  Dropit
//
//  Created by nevercry on 9/24/15.
//  Copyright © 2015 nevercry. All rights reserved.
//

import UIKit

class BezierPathsView: UIView {

    private var bezierPaths = [String:UIBezierPath]()
    
    func setPath(path: UIBezierPath?, named name:String) {
        bezierPaths[name] = path
        setNeedsDisplay()
    }
    
    override func drawRect(rect: CGRect) {
        for (_, path) in bezierPaths {
            path.stroke()
        }
    }
}
