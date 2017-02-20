//
//  GradientView.swift
//  GradientBackground
//
//  Created by Admin on 29.12.16.
//  Copyright © 2016 da-manifest. All rights reserved.
//

import UIKit

class GradientView: UIView
{
    override class var layerClass: AnyClass
    {
        get
        {
            return CAGradientLayer.self
        }
    }
    
    func create(color1: CGColor = UIColor.black.cgColor,
                                  color2: CGColor = UIColor(red: 0.05, green: 0.5, blue: 0.75, alpha: 1.0).cgColor,
                                  color3: CGColor = UIColor(red: 0.05, green: 0.4, blue: 0.55, alpha: 0.95).cgColor,
                                  color4: CGColor = UIColor.black.cgColor,
                                  startPoint: CGPoint = CGPoint(x: 0, y: 0),
                                  endpoint: CGPoint = CGPoint(x: 1, y: 1))
    {
        let deviceScale = UIScreen.main.scale
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = CGRect(x: 0, y: 0, width: self.frame.size.width * deviceScale, height: self.frame.size.height * deviceScale)
        let color1 = color1 as CGColor
        let color2 = color2 as CGColor
        let color3 = color3 as CGColor
        let color4 = color4 as CGColor
        gradientLayer.colors = [color1, color2, color3, color4]
        gradientLayer.locations = [0, 0.25, 0.85, 1]
        gradientLayer.startPoint = startPoint
        gradientLayer.endPoint = endpoint
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
}
