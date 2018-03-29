//
//  SpeedConverter.swift
//  Utility Converter
//
//  Created by Calcey on 3/29/18.
//  Copyright © 2018 student. All rights reserved.
//

import Foundation
class SpeedConverter{
    
    class func kmhConversion(speedType : SpeedEnum) -> Double {
        switch speedType {
        case .kmPerHour:
            return 1;
        case .meterPersec:
            return 0.277778
        case .milesPerHour:
            return 0.621371
        }
    }
}
