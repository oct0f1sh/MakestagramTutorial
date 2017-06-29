//
//  UIColor+Utility.swift
//  Makestagram
//
//  Created by Duncan MacDonald on 6/29/17.
//  Copyright © 2017 MakeSchool. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    private convenience init(hex: Int) {
        let components = (
            R: CGFloat((hex >> 16) & 0xff) / 255,
            G: CGFloat((hex >> 08) & 0xff) / 255,
            B: CGFloat((hex >> 00) & 0xff) / 255
        )
        self.init(red: components.R, green: components.G, blue: components.B, alpha: 1)
    }
    static var mgBlue: UIColor {
        return UIColor(hex: 0x3796F0)
    }
    static var mgLightGray: UIColor {
        return UIColor(hex: 0xDDDCDC)
    }
    static var mgRed: UIColor {
        return UIColor(hex: 0xE7554B)
    }
}