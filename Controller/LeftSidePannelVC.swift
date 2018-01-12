//
//  LeftSidePannelVCViewController.swift
//  iTaxi
//
//  Created by Lingeswaran Kandasamy on 1/3/18.
//  Copyright © 2018 Lingeswaran Kandasamy. All rights reserved.
//

import UIKit

class LeftSidePannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
 
    @IBAction func signUpLoginBtnTapped(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let loginVC = storyBoard.instantiateViewController(withIdentifier: "LoginVC") as? LoginVC
        present(loginVC!, animated: true, completion: nil)
        
    }
}
