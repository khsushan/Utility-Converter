//
//  CustomUIButton.swift
//  Utility Converter
//
//  Created by Ushan on 3/31/18.
//  Copyright © 2018 student. All rights reserved.
//

import Foundation
import UIKit
class CustomUIButton : UIButton{
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    @IBInspectable var borderColor: UIColor? {
        didSet {
            layer.borderColor = borderColor?.cgColor
        }
    }
    
}
