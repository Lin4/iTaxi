//
//  ViewController.swift
//  iTaxi
//
//  Created by Lingeswaran Kandasamy on 1/2/18.
//  Copyright © 2018 Lingeswaran Kandasamy. All rights reserved.
//

import UIKit
import MapKit

class HomeVC: UIViewController {
    @IBOutlet weak var actionBtn: RoundedShadowBtn!
    @IBOutlet weak var mapView: MKMapView!
    
    var delegate: CentreVCDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }


    @IBAction func actionBtnTapped(_ sender: Any) {
        actionBtn.animateButton(shouldLoad: true, withMessage: nil)
    }
    @IBAction func menuBtnWasPressed(_ sender: Any) {
        delegate?.toggleLeftPanel()
    }
}

