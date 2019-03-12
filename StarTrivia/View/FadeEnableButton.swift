//
//  FadeEnableButton.swift
//  StarTrivia
//
//  Created by Mohammad Abu Maizer on 3/12/19.
//  Copyright © 2019 Mohammad Abu Maizer. All rights reserved.
//

import UIKit

class  FadeEnableButton: UIButton {
    override var isEnabled: Bool {
        didSet {
            if isEnabled {
                UIView.animate(withDuration: 0.2) {
                    self.alpha = 1.0 }
            } else {
                UIView.animate(withDuration: 0.2) {
                    self.alpha = 0.5 }
            }
        }
    }
}
