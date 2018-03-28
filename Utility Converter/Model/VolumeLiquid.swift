//
//  VolumeLiquid.swift
//  Utility Converter
//
//  Created by Calcey on 3/28/18.
//  Copyright © 2018 student. All rights reserved.
//

import Foundation
class VolumeLiquid {
    private var tag : Int = 0;
    private var input : Double = 0;
    private var galoon :  Double = 0;
    private var liter : Double = 0;
    private var fluidOunce :  Double = 0;
    private var pint : Double = 0;
    
    var Tag : Int {
        get {return tag}
        set {tag = newValue }
    }
    
    var Input : Double {
        get {return input}
        set {input = newValue }
    }
    
    var Galoon : Double {
        get {return galoon}
        set {galoon = newValue }
    }
    
    var Liter : Double {
        get {return liter}
        set {liter = newValue }
    }
    
    var FluidOunce : Double {
        get {return fluidOunce}
        set {fluidOunce = newValue }
    }
    
    var Pint : Double {
        get {return pint}
        set {pint = newValue }
    }
    
    func  Convert(){
        let type : VolumeLiquidEnum = VolumeLiquidEnum(rawValue: self.Tag)!
        
        switch type {
            case .fluidOunce :
                    FluidOunce = input;
                    Galoon = input / VolumeLiquidConverter.KgGaloonConversion(liqudType: .fluidOunce)
                    input = Galoon;
                    Pint =  input * VolumeLiquidConverter.KgGaloonConversion(liqudType: .pint)
                    Liter = input * VolumeLiquidConverter.KgGaloonConversion(liqudType: .litreLiquid)
            case .galloon :
                    Galoon = input;
                    FluidOunce = input * VolumeLiquidConverter.KgGaloonConversion(liqudType: .fluidOunce)
                    Pint =  input * VolumeLiquidConverter.KgGaloonConversion(liqudType: .pint)
                    Liter = input * VolumeLiquidConverter.KgGaloonConversion(liqudType: .litreLiquid)

            case .pint :
                    Pint = input;
                     Galoon =  input / VolumeLiquidConverter.KgGaloonConversion(liqudType: .pint)
                    input = Galoon;
                    FluidOunce = input * VolumeLiquidConverter.KgGaloonConversion(liqudType: .fluidOunce)
                   
                    Liter = input * VolumeLiquidConverter.KgGaloonConversion(liqudType: .litreLiquid)
            case .litreLiquid :
                Liter = input;
                Galoon =  input / VolumeLiquidConverter.KgGaloonConversion(liqudType: .litreLiquid);
                input = Galoon;
                Pint =  input * VolumeLiquidConverter.KgGaloonConversion(liqudType: .pint)
                FluidOunce = input * VolumeLiquidConverter.KgGaloonConversion(liqudType: .fluidOunce)
        }
    }
}
