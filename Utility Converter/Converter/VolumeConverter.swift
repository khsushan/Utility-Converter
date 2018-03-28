//
//  VolumeConverter.swift
//  Utility Converter
//
//  Created by Calcey on 3/28/18.
//  Copyright © 2018 student. All rights reserved.
//

import Foundation
class VolumeConverter {
    
    class func literConversion(volumeType : VolumeEnum) -> Double {
        switch volumeType {
        case .liter:
            return 1;
        case .m3:
            return 0.001
        case .cm3:
            return 1000
        }
    }
}
