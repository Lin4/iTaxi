//
//  RoundedShadowBtn.swift
//  iTaxi
//
//  Created by Kalaivani Rasalingam on 1/2/18.
//  Copyright © 2018 Lingeswaran Kandasamy. All rights reserved.
//

import UIKit

class RoundedShadowBtn: UIButton {
    
    var originalSize: CGRect?
    
    override func awakeFromNib() {
        setupView()
    }
    func setupView() {
        originalSize = self.frame
        self.layer.cornerRadius = 5.0
        self.layer.shadowRadius = 10.0
        self.layer.shadowColor = #colorLiteral(red: 0.4078193307, green: 0.4078193307, blue: 0.4078193307, alpha: 1)
        self.layer.shadowOpacity = 0.3
        self.layer.shadowOffset = CGSize.zero
    }
    func animateButton(shouldLoad: Bool, withMessage message: String?) {
        let spinner = UIActivityIndicatorView()
        spinner.activityIndicatorViewStyle = .whiteLarge
        spinner.color = #colorLiteral(red: 0.4078193307, green: 0.4078193307, blue: 0.4078193307, alpha: 1)
        spinner.alpha = 0.0
        spinner.hidesWhenStopped = true
        spinner.tag = 21
        if shouldLoad {
            self.addSubview(spinner)
            self.setTitle("", for: .normal)
            UIView.animate(withDuration: 0.2, animations: {
                self.layer.cornerRadius = self.frame.height / 2
                self.frame = CGRect(x: self.frame.midX - (self.frame.height / 2), y: self.frame.origin.y, width: self.frame.height, height: self.frame.height) }, completion: {(finished) in
                    if finished == true {
                        spinner.startAnimating()
                        spinner.center = CGPoint(x: self.frame.width / 2 + 1, y: self.frame.width / 2 + 1)
                        UIView.animate(withDuration: 0.2, animations: {
                            spinner.alpha = 1.0
                        })
                    }
                })
                self.isUserInteractionEnabled = false
        } else {
            self.isUserInteractionEnabled = true
            for subview in self.subviews{
                if subview.tag == 21{
                subview.removeFromSuperview()
                }
            }
            UIView.animate(withDuration: 0.2, animations: {
                self.layer.cornerRadius = 5.0
                self.frame = self.originalSize!
                self.setTitle(message, for: .normal)
            })
        }
    }
}
