//
//  PopUpViewController.swift
//  PopupView
//
//  Created by Marcos Felipe Souza on 10/12/16.
//  Copyright © 2016 Marcos. All rights reserved.
//

import UIKit

class PopUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let color = UIColor.black.withAlphaComponent(0.3)
        self.view.backgroundColor = color
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func closePopUp(_ sender: Any) {
        self.view.removeFromSuperview()
    }
    
    func showAnimate(){
        self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        self.view.alpha = 0.0
        UIView.animate(withDuration: 0.25, animations: {
            
            self.view.alpha = 0.0
            self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        
        })
    }
    
    func removeAnimate(){
        UIView.animate(withDuration: 0.25, animations: {
            self.view.transform = CGAffineTransform(scaleX: 1.3,y: 1.3)
            self.view.alpha = 0.8
        
        }, completion: {(finish: Bool) in
            if(finish) {
                self.view.removeFromSuperview()
            }
        })
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
