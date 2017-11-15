//
//  BorderButton.swift
//  Swoosh
//
//  Created by Harish Chopra on 2017-11-14.
//  Copyright © 2017 Harish Chopra. All rights reserved.
//

import UIKit

class BorderButton: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }
}
