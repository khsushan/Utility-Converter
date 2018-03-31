//
//  StringFomatter.swift
//  Utility Converter
//
//  Created by Ushan on 3/31/18.
//  Copyright © 2018 student. All rights reserved.
//

import Foundation
class StringFomatter {
    
    class func formatString(text : String) -> String{
        return text.trimmingCharacters(in: CharacterSet(charactersIn: "01234567890.").inverted)
    }
    
    class func isValidDouble(maxDecimalPlaces: Int, stringValue : String) -> Bool {
        let formatter = NumberFormatter()
        formatter.allowsFloats = true
        let decimalSeparator = formatter.decimalSeparator ?? "."
        if formatter.number(from: stringValue) != nil {
            let split = stringValue.components(separatedBy: decimalSeparator)
            let digits = split.count == 2 ? split.last ?? "" : ""
            return digits.characters.count <= maxDecimalPlaces
        }
        return false
    }
}
