//
//  Distance.swift
//  Utility Converter
//
//  Created by Calcey on 3/28/18.
//  Copyright © 2018 student. All rights reserved.
//

import Foundation
class Distance {
    private var cm : Double = 0;
    private var meter : Double = 0;
    private var inch : Double = 0;
    private var mm : Double = 0;
    private var yard : Double = 0;
    private var tag : Int = 0;
    private var inputValue : Double = 0;
    
    var Tag : Int {
        get {return tag}
        set {tag = newValue }
    }
    
    var Input : Double {
        get {return inputValue}
        set {inputValue = newValue }
    }
    
    var Cm : Double{
        get {return cm}
        set {cm = newValue }
    }
    
    var Meter : Double{
        get {return meter}
        set {meter = newValue }
    }
    
    var Inch : Double{
        get {return inch}
        set {inch = newValue }
    }
    
    var Mm : Double{
        get {return mm}
        set {mm = newValue }
    }
    
    var Yard : Double{
        get {return yard}
        set {yard = newValue }
    }
    
    func Convert(){
        let type : DistanceEnum = DistanceEnum(rawValue: self.Tag)!
        switch type {
        case .cm:
            self.Cm = inputValue
            self.Mm = inputValue / DistanceConverter.MmConversion(distanceType: .cm)
            inputValue = self.Mm
            self.Inch = inputValue * DistanceConverter.MmConversion(distanceType: .inch)
            self.Meter = inputValue * DistanceConverter.MmConversion(distanceType: .meter)
            self.Yard = inputValue * DistanceConverter.MmConversion(distanceType: .yard)
        case .inch:
            self.Inch = inputValue
            self.Mm = inputValue / DistanceConverter.MmConversion(distanceType: .inch)
            inputValue = self.Mm
            self.Cm = inputValue * DistanceConverter.MmConversion(distanceType: .cm)
            self.Meter = inputValue * DistanceConverter.MmConversion(distanceType: .meter)
            self.Yard = inputValue * DistanceConverter.MmConversion(distanceType: .yard)
        case .meter:
            self.Meter = inputValue
            self.Mm = inputValue / DistanceConverter.MmConversion(distanceType: .meter)
            inputValue = self.Mm
            self.Cm = inputValue * DistanceConverter.MmConversion(distanceType: .cm)
            self.Inch = inputValue * DistanceConverter.MmConversion(distanceType: .inch)
            self.Yard = inputValue * DistanceConverter.MmConversion(distanceType: .yard)
        case.mm:
            self.Mm = inputValue
            self.Meter = inputValue * DistanceConverter.MmConversion(distanceType: .meter)
            self.Cm = inputValue * DistanceConverter.MmConversion(distanceType: .cm)
            self.Inch = inputValue * DistanceConverter.MmConversion(distanceType: .inch)
            self.Yard = inputValue * DistanceConverter.MmConversion(distanceType: .yard)
        case .yard:
            self.Yard = inputValue
            self.Mm = inputValue /  DistanceConverter.MmConversion(distanceType: .yard)
            inputValue = self.Mm
            self.Cm = inputValue * DistanceConverter.MmConversion(distanceType: .cm)
            self.Inch = inputValue * DistanceConverter.MmConversion(distanceType: .inch)
            self.Yard = inputValue * DistanceConverter.MmConversion(distanceType: .yard)
        }
    }
    
}
