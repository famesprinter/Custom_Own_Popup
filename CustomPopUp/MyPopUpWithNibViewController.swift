//
//  MyPopUpWithNibViewController.swift
//  CustomPopUp
//
//  Created by Kittitat Rodphotong on 5/9/2559 BE.
//  Copyright © 2559 FameSprinter. All rights reserved.
//

import UIKit

class MyPopUpWithNibViewController: UIViewController {
    // MARK: - IBAction
    @IBOutlet weak var popUpView: UIView!

    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        popUpView.layer.cornerRadius = 5;
    }
    
    // MARK: - @IBAction
    @IBAction func closePopUp() {
        UIView.animateWithDuration(0.2, animations: {
            self.popUpView.alpha = 0
            self.view.alpha = 0
            }, completion: { (value: Bool) in
                self.willMoveToParentViewController(nil)
                self.view.removeFromSuperview()
                self.removeFromParentViewController()
        })
    }

}
