//
//  ViewController.swift
//  GradientBackground
//
//  Created by Admin on 20.02.17.
//  Copyright © 2017 da-manifest. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet weak var gradientBackground: GradientView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }
    
    override func viewDidLayoutSubviews()
    {
        self.gradientBackground.create()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

