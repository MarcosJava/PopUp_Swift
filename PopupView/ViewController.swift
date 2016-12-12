//
//  ViewController.swift
//  PopupView
//
//  Created by Marcos Felipe Souza on 10/12/16.
//  Copyright © 2016 Marcos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    @IBAction func showPopUp(_ sender: Any) {
        let uiStoryBoard = UIStoryboard(name: "Main", bundle: nil)
        let popUpVC = uiStoryBoard.instantiateViewController(withIdentifier: "sbPopupID") as! PopUpViewController
        
        self.addChildViewController(popUpVC)
        popUpVC.view.frame = self.view.frame
        
        self.view.addSubview(popUpVC.view)
        popUpVC.didMove(toParentViewController: self)
        
    }
}

