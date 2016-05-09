//
//  ViewController.swift
//  CustomPopUp
//
//  Created by Kittitat Rodphotong on 4/29/2559 BE.
//  Copyright © 2559 FameSprinter. All rights reserved.
//

import UIKit

private let storyBoardName = "MyPopUp"
private let storyBoardIdentifier = "MyPopUpStoryBoard"
private let popUpNibName = "MyPopUpWithNibViewController"

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func displayPopUpStoryBoard() {
        let storyboard = UIStoryboard(name:storyBoardName,
                                      bundle: NSBundle.mainBundle())
        let popUpVC = storyboard.instantiateViewControllerWithIdentifier(storyBoardIdentifier)
        addChildViewController(popUpVC)
        view.addSubview(popUpVC.view)
    }

    @IBAction func displayPopUpFromNib() {
        let vc = MyPopUpWithNibViewController(nibName: popUpNibName, bundle: nil)
        addChildViewController(vc)
        vc.view.frame = view.frame
        view.addSubview(vc.view)
        vc.didMoveToParentViewController(self)
    }
    
}

