//
//  TempreatureConverter.swift
//  Utility Converter
//
//  Created by Sachith Ushan on 3/29/18.
//  Copyright © 2018 student. All rights reserved.
//

import Foundation
class TempreatureConverter{
    
    public struct fahrenheit
    {
        var celsiusToFahrenheitConst:Double = (9/5)
        var addupConst : Double=32
        var fahrenheitToCelsiusConst: Double = (5/9)
    }
    public struct kelvin
    {
        var celsiusToKelvinConst: Double = 273.15
        var fahrenheitToKelvinConst: Double =  459.67
    }
    
    ///    celsius to other conversions
    class func calculateCelsiusToFarenheit(input:Double)->Double
    {
        let result = (input*fahrenheit().celsiusToFahrenheitConst)+fahrenheit().addupConst
        return result
    }
    
    class func calculateCelsiusToKelvin(input:Double) -> Double
    {
        let result = input+kelvin().celsiusToKelvinConst
        return result
        
    }
    
    
    ///    fahrenheit to other conversions
    class func calculateFahrenheitToCelcius(input:Double) ->Double
    {
        let result = (input - fahrenheit().addupConst)*fahrenheit().fahrenheitToCelsiusConst
        return result
    }
    
    class func calculateFahrenheitToKelvin(input:Double) ->Double
    {
        let result = (input+kelvin().fahrenheitToKelvinConst)*fahrenheit().fahrenheitToCelsiusConst
        return result
    }
    
    
    ///    kelvin to other conversions
    class func calculateKelvinToCelsius(input:Double) ->Double
    {
        let result = input - kelvin().celsiusToKelvinConst
        return result
    }
    
    class func calculateKelvinToFahrenheit(input:Double) ->Double
    {
        let result = (input*fahrenheit().celsiusToFahrenheitConst)-kelvin().fahrenheitToKelvinConst
        return result
    }
    
}
