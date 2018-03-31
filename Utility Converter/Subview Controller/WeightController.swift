//
//  WeightController.swift
//  Utility Converter
//
//  Created by Sachith Ushan on 3/28/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class WeightController: BaseSubView, UITextFieldDelegate {
   
    
    
    @IBOutlet weak var ounceText: UITextField!
    @IBOutlet weak var poundText: UITextField!
    @IBOutlet weak var stoneText: UITextField!
    @IBOutlet weak var gramText: UITextField!
    @IBOutlet weak var kgText: UITextField!
    @IBOutlet weak var stonePoundText: UITextField!
    
    override init(frame:CGRect){
        super.init(frame:frame)
        poundText.delegate = self;
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    @IBAction func weightViewEditChange(_ sender: UITextField) {
        let text: String = StringFomatter.formatString(text: sender.text!)
        if(StringFomatter.isValidDouble(maxDecimalPlaces: 4, stringValue: text)){
            let model : Weight     = Weight();
            model.Input = Double(truncating: NumberFormatter().number(from:text)!)
            model.Tag = sender.tag
            model.Convert();
            ounceText.text = String(model.Ounce)
            poundText.text = String(model.Pound)
            stoneText.text = String(model.Stone)
            gramText.text = String(model.Gram)
            kgText.text = String(model.Kg)
            stonePoundText.text = String(model.SmallPound)
        }
        
    }
    
    @IBAction func weightViewEditingBegin(_ sender: UITextField) {
        currentTextField = sender;
    }
    
    override func editChanged(sender : UITextField) {
        weightViewEditChange(sender)
    }
    
    override func save() {
        var saveRecord :  String = "";
        saveRecord += "Ounce : " + ounceText.text! + " , ";
        saveRecord += "Pound : " + poundText.text! + " , ";
        saveRecord += "Stone : " + stoneText.text! + " , ";
        saveRecord += "Gram : " + gramText.text! + " , ";
        saveRecord += "Kilo Gram : " + kgText.text!
        UserDefaultsHandler.save(data: saveRecord, key: Constant.WEIGHT_KEY)
    }
}
