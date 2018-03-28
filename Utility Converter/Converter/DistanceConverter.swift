//
//  DistanceConverter.swift
//  Utility Converter
//
//  Created by Calcey on 3/28/18.
//  Copyright © 2018 student. All rights reserved.
//

import Foundation
class DistanceConverter{
    
    class func MmConversion(distanceType : DistanceEnum) -> Double {
        switch distanceType {
            case .mm:
                return 1;
            case .inch:
                return 0.0393701
            case .yard:
                return 0.00109361
            case .meter:
                return 0.001
            case .cm:
                return 0.1
        }
    }
}
