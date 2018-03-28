//
//  WeightConverter.swift
//  Utility Converter
//
//  Created by Calcey on 3/28/18.
//  Copyright © 2018 student. All rights reserved.
//

import Foundation
class WeightConverter{
    
    class func KgConversionValue(weightType : WeightEnum) -> Double {
        switch weightType {
        case .kg:
            return 1;
        case .gram:
            return 1000
        case .ounce:
            return 35.274
        case .pound:
            return 2.20462
        case .stone:
            return 0.157473
        case .poundSmall:
            return 0.015000
            
        }
    }
}

