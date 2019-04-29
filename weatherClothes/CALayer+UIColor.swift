//
//  CALayer+UIColor.swift
//  weatherClothes
//
//  Created by sue on 2019/04/29.
//  Copyright © 2019 sue. All rights reserved.
//

import UIKit

extension CALayer {
    func setBorderUIColor(_ color: UIColor) {
        self.borderColor = color.cgColor
    }
}
