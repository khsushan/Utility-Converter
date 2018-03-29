//
//  Tempreature.swift
//  Utility Converter
//
//  Created by Sachith Ushan on 3/29/18.
//  Copyright © 2018 student. All rights reserved.
//

import Foundation
class  Tempreature{
    private var  celsius: Double = 0;
    private var farenhite : Double = 0;
    private var kelvin : Double = 0;
    private var tag : Int = 0;
    private var input : Double = 0;
    
    var Tag : Int {
        get {return tag}
        set {tag = newValue }
    }
    
    var Input : Double {
        get {return input}
        set {input = newValue }
    }
    
    var Celsius : Double{
        get {return celsius}
        set { celsius = newValue }
    }
    
    var Kelvin : Double{
        get {return kelvin}
        set { kelvin = newValue }
    }
    
    
    var Farenhite : Double{
        get {return farenhite}
        set { farenhite = newValue }
    }
    
    func Convert(){
        let type : TempreatureEnum = TempreatureEnum(rawValue: self.Tag)!
        switch type {
            case .farenhite:
                self.Farenhite = input;
                self.Celsius = TempreatureConverter.calculateFahrenheitToCelcius(input: input)
                self.kelvin = TempreatureConverter.calculateFahrenheitToKelvin(input: input)
            case .celsius:
                self.Celsius = input;
                self.Kelvin = TempreatureConverter.calculateCelsiusToKelvin(input: input)
                self.Farenhite = TempreatureConverter.calculateCelsiusToFarenheit(input: input)
        case .kelvin :
                self.Kelvin = input;
                self.Celsius = TempreatureConverter.calculateKelvinToCelsius(input: input)
                self.Farenhite = TempreatureConverter.calculateKelvinToFahrenheit(input: input)
        }
    }
}
