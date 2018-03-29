//
//  Volume.swift
//  Utility Converter
//
//  Created by Calcey on 3/29/18.
//  Copyright © 2018 student. All rights reserved.
//

import Foundation
class Volume{
    private var liter : Double = 0;
    private var cubicMeter : Double = 0;
    private var cubiCentimeter : Double = 0;
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
    
    var Liter : Double{
        get {return liter}
        set {liter = newValue }
    }
    
    var CubicMeter : Double{
        get {return cubicMeter}
        set {cubicMeter = newValue }
    }
    
    var CubicCentimeter : Double{
        get {return cubiCentimeter}
        set {cubiCentimeter = newValue }
    }
    
    func  Convert() {
        let type : VolumeEnum  = VolumeEnum(rawValue:self.Tag)!
        switch type {
            case .cm3:
                self.CubicCentimeter = inputValue
                self.Liter = inputValue / VolumeConverter.literConversion(volumeType: .cm3)
                inputValue = self.Liter
                self.CubicMeter = inputValue * VolumeConverter.literConversion(volumeType: .m3)
            case .liter:
                self.Liter = inputValue
                self.CubicCentimeter = inputValue * VolumeConverter.literConversion(volumeType: .cm3)
                self.CubicMeter = inputValue * VolumeConverter.literConversion(volumeType: .m3)
            case .m3 :
                self.CubicMeter = inputValue
                self.Liter = inputValue / VolumeConverter.literConversion(volumeType: .m3)
                inputValue = self.Liter
                self.CubicCentimeter = inputValue * VolumeConverter.literConversion(volumeType: .cm3)
        }
    }
}
