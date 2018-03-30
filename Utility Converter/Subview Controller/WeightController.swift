//
//  WeightController.swift
//  Utility Converter
//
//  Created by Frank Thamel on 3/28/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class WeightController: BaseSubView {
   
    
    
    @IBOutlet weak var ounceText: UITextField!
    @IBOutlet weak var poundText: UITextField!
    @IBOutlet weak var stoneText: UITextField!
    @IBOutlet weak var gramText: UITextField!
    @IBOutlet weak var kgText: UITextField!
    @IBOutlet weak var stonePoundText: UITextField!
    
    @IBAction func weightViewEditChange(_ sender: UITextField) {
        let model : Weight 	= Weight();
        model.Input = Double(truncating: NumberFormatter().number(from: sender.text!)!)
        model.Tag = sender.tag
        model.Convert();
        ounceText.text = String(model.Ounce)
        poundText.text = String(model.Pound)
        stoneText.text = String(model.Stone)
        gramText.text = String(model.Gram)
        kgText.text = String(model.Kg)
        stonePoundText.text = String(model.SmallPound)
        
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
