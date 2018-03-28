//
//  Swift.swift
//  Utility Converter
//
//  Created by Calcey on 3/28/18.
//  Copyright © 2018 student. All rights reserved.
//

import Foundation
class Weight{
    private var tag : Int = 0;
    private var kg : Double = 0;
    private var pound : Double = 0;
    private var ounce : Double = 0;
    private var gram : Double = 0;
    private var stone : Double = 0;
    private var smallPound : Double = 0;
    private var inputValue : Double = 0;

    var Tag : Int {
        get {return tag}
        set {tag = newValue }
    }
    
    var Input : Double {
        get {return inputValue}
        set {inputValue = newValue }
    }

    var Kg : Double{
        get {return kg}
        set {kg = newValue }
    }

    var Pound : Double{
        get {return pound}
        set {pound = newValue }
    }

    var Ounce : Double{
        get {return ounce}
        set {ounce = newValue }
    }

    var Gram : Double{
        get {return gram}
        set {gram = newValue }
    }

    var Stone : Double{
        get {return stone}
        set {stone = newValue }
    }

    var SmallPound : Double{
        get {return smallPound}
        set {smallPound = newValue }
    }

    func Convert(){
        let type : WeightEnum = WeightEnum(rawValue: self.Tag)!
        
        switch type {
        case WeightEnum.kg:
            Kg = inputValue
            Gram = inputValue * WeightConverter.KgConversionValue(weightType: .gram)
            Pound = inputValue * WeightConverter.KgConversionValue(weightType: .pound)
            Ounce = inputValue * WeightConverter.KgConversionValue(weightType: .ounce)
            Stone = inputValue *  WeightConverter.KgConversionValue(weightType: .stone)
            SmallPound = inputValue *  WeightConverter.KgConversionValue(weightType: .poundSmall)
        case WeightEnum.pound :
            Pound = inputValue
            Kg = inputValue / WeightConverter.KgConversionValue(weightType: .pound)
            inputValue = Kg
            Gram = inputValue * WeightConverter.KgConversionValue(weightType: .gram)
            Ounce = inputValue * WeightConverter.KgConversionValue(weightType: .ounce)
            Stone = inputValue *  WeightConverter.KgConversionValue(weightType: .stone)
            SmallPound = inputValue *  WeightConverter.KgConversionValue(weightType: .poundSmall)
            break;
        case WeightEnum.ounce :
            Ounce = inputValue
            Kg = inputValue / WeightConverter.KgConversionValue(weightType: .ounce)
            inputValue = Kg
            Gram = inputValue * WeightConverter.KgConversionValue(weightType: .gram)
            Pound = inputValue * WeightConverter.KgConversionValue(weightType: .pound)
            Stone = inputValue *  WeightConverter.KgConversionValue(weightType: .stone)
            SmallPound = inputValue *  WeightConverter.KgConversionValue(weightType: .poundSmall)
            break;
        case WeightEnum.gram :
            Gram = inputValue
            Kg = inputValue / WeightConverter.KgConversionValue(weightType: .gram)
            inputValue = Kg
            Ounce = inputValue * WeightConverter.KgConversionValue(weightType: .ounce)
            Pound = inputValue * WeightConverter.KgConversionValue(weightType: .pound)
            Stone = inputValue *  WeightConverter.KgConversionValue(weightType: .stone)
            SmallPound = inputValue *  WeightConverter.KgConversionValue(weightType: .poundSmall)
            break;
        case WeightEnum.stone :
            Stone = inputValue
            Kg = inputValue / WeightConverter.KgConversionValue(weightType: .stone)
            inputValue = Kg
            Ounce = inputValue * WeightConverter.KgConversionValue(weightType: .ounce)
            Pound = inputValue * WeightConverter.KgConversionValue(weightType: .pound)
            Gram = inputValue *  WeightConverter.KgConversionValue(weightType: .gram)
            SmallPound = inputValue *  WeightConverter.KgConversionValue(weightType: .poundSmall)
            break;
        case WeightEnum.poundSmall :
            SmallPound = inputValue
            Kg = inputValue / WeightConverter.KgConversionValue(weightType: .poundSmall)
            inputValue = Kg
            Ounce = inputValue * WeightConverter.KgConversionValue(weightType: .gram)
            Pound = inputValue * WeightConverter.KgConversionValue(weightType: .pound)
            Gram = inputValue *  WeightConverter.KgConversionValue(weightType: .stone)
            break;
        }
    }
}

