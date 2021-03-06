//
//  ShadowController.swift
//  RCToolsDemo
//
//  Created by Rex Cao on 12/10/15.
//  Copyright (c) 2015 rexcao. All rights reserved.
//

import UIKit


class ShadowViewController: UIViewController {

    @IBOutlet weak var needShadowView: UIView!
    @IBOutlet weak var imageViewCar: UIImageView!
    private var curveShadowShowed: Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(ShadowViewController.testImage(_:)))
        self.imageViewCar.userInteractionEnabled = true
        self.imageViewCar.addGestureRecognizer(tapGesture)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addShadow(sender: UIBarButtonItem) {
//        let curveShadow = CurveShadowView(alignment: .horizontal, length: 300, anchor: CGPointMake(10, 100))
//        self.view.addSubview(curveShadow)
    }
    
    @IBAction func toggleShadow(sender: UIButton) {
        if !self.curveShadowShowed {
            self.needShadowView.layer.curveShadow(.Left)
            self.curveShadowShowed = true
        } else {
            self.needShadowView.layer.shadowOpacity = 0.0
            self.needShadowView.layer.shadowOffset = CGSizeMake(0, 0)
            self.needShadowView.layer.shadowPath = nil
            self.curveShadowShowed = false
        }
    }
    
    @IBAction func buildCircleShadow(sender: UIButton) {
        self.imageViewCar.curveShadow(20)
    }
    
    func testImage(recognizer: UITapGestureRecognizer) {
        if recognizer.state == .Ended {
            let alertController = UIAlertController(title: "notice", message: "you have set the curve-shadow successfullly", preferredStyle: UIAlertControllerStyle.Alert)
            let action = UIAlertAction(title: "ok", style: .Default, handler: {
                action in
            })
            alertController.addAction(action)
            self.presentViewController(alertController, animated: true, completion: nil)
        }
    }
    
    @IBAction func attachBorder(sender: UIButton) {
        if self.needShadowView.attachedBorder {
            self.needShadowView.removeAttachedBorder()
        } else {
            self.needShadowView.attachBorder([
                RTBorder(side: .Top, borderWidth: 1, borderColor: UIColor.greenColor()),
                RTBorder(side: .Left, borderWidth: 1, borderColor: UIColor.redColor()),
                RTBorder(side: .Bottom, borderWidth: 1, borderColor: UIColor.blueColor()),
                RTBorder(side: .Right, borderWidth: 1, borderColor: UIColor.yellowColor()),
                ])
        }
    }
}
