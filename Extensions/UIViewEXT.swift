//
//  UIViewEXT.swift
//  iTaxi
//
//  Created by Lingeswaran Kandasamy on 1/12/18.
//  Copyright © 2018 Lingeswaran Kandasamy. All rights reserved.
//

import UIKit

extension UIView {
    func fadeTo(alphaValue: CGFloat, withDuration duration: TimeInterval) {
        UIView.animate(withDuration:duration) {
            self.alpha = alphaValue
        }
    }
}
