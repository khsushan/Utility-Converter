//
//  VolumeLiquidConverter.swift
//  Utility Converter
//
//  Created by Calcey on 3/28/18.
//  Copyright © 2018 student. All rights reserved.
//

import Foundation
class VolumeLiquidConverter {
    
    class func KgGaloonConversion(liqudType : VolumeLiquidEnum) -> Double {
        switch liqudType {
        case .galloon:
            return 1;
        case .litreLiquid:
            return 3.78541
        case .pint:
            return 8
        case .fluidOunce:
            return 128
        }
    }
}
