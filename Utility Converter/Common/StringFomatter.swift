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
        var stringVal = text;
        if(text.last == "."){
            stringVal += "0"
        }
        return stringVal.trimmingCharacters(in: CharacterSet(charactersIn: "01234567890.").inverted)
    }
    
    class func formatStringForTempreature(text : String) -> String{
        var stringVal = text;
        if(text.last == "."){
            stringVal += "0"
        }
        if(text.first == "-" ){
             return stringVal.trimmingCharacters(in: CharacterSet(charactersIn: "-01234567890.").inverted)
        }
        return stringVal.trimmingCharacters(in: CharacterSet(charactersIn: "01234567890.").inverted)
    }
}
