//
//  BlackBgView.swift
//  StarTrivia
//
//  Created by Mohammad Abu Maizer on 3/10/19.
//  Copyright © 2019 Mohammad Abu Maizer. All rights reserved.
//

import UIKit

class blackBGView : UIView {
    override func awakeFromNib() {
        layer.backgroundColor = BLACK_BG
        layer.cornerRadius = 10
    }
}

class blackBGButton : UIButton {
    override func awakeFromNib() {
        layer.backgroundColor = BLACK_BG
        layer.cornerRadius = 10
    }
}
