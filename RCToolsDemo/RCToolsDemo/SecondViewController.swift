//
//  SecondViewController.swift
//  RCToolsDemo
//
//  Created by Rex Cao on 29/9/15.
//  Copyright (c) 2015 rexcao. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var dismissButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        RTPrint.shareInstance().prt("second VC loaded")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
