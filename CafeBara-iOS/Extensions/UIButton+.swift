//
//  UIButton+.swift
//  CafeBara-iOS
//
//  Created by 이수민 on 7/5/24.
//

import UIKit

extension UIButton {
    
    func roundedButton(cornerRadius: CGFloat, maskedCorners: CACornerMask) {
        clipsToBounds = true
        layer.cornerRadius = cornerRadius
        layer.maskedCorners = CACornerMask(arrayLiteral: maskedCorners)
    }
    
}

