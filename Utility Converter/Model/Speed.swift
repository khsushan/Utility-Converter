//
//  Speed.swift
//  Utility Converter
//
//  Created by Calcey on 3/29/18.
//  Copyright © 2018 student. All rights reserved.
//

import Foundation
class Speed{
    private var milesPerHour : Double = 0;
    private var kmPerHour : Double = 0;
    private var meterPerSec : Double = 0;
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
    
    var MilesPerHour : Double{
        get {return milesPerHour}
        set { milesPerHour = newValue }
    }
    
    var KMPerHour : Double{
        get {return kmPerHour}
        set { kmPerHour = newValue }
    }
    
    var MeterPerSec : Double{
        get {return meterPerSec}
        set { meterPerSec = newValue }
    }
    
    func Convert(){
        let type : SpeedEnum = SpeedEnum(rawValue: self.Tag)!
        switch type {
            case .kmPerHour:
                self.kmPerHour = input;
                self.MeterPerSec = input * SpeedConverter.kmhConversion(speedType: .meterPersec)
                 self.MilesPerHour = input * SpeedConverter.kmhConversion(speedType: .milesPerHour)
            case .meterPersec:
                self.meterPerSec = input
                self.kmPerHour = input / SpeedConverter.kmhConversion(speedType: .meterPersec);
                input = self.kmPerHour
                self.MilesPerHour = input * SpeedConverter.kmhConversion(speedType: .milesPerHour)
            case .milesPerHour:
                self.milesPerHour = input
                self.kmPerHour = input / SpeedConverter.kmhConversion(speedType: .milesPerHour);
                input = self.kmPerHour
                self.MeterPerSec = input * SpeedConverter.kmhConversion(speedType: .meterPersec)
        }
    }
}
