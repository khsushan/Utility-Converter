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
        
    }
    
    @IBAction func weightViewEditingBegin(_ sender: UITextField) {
        currentTextField = sender;
    }
    
    override func editChanged(sender : UITextField) {
        weightViewEditChange(sender)
    }
    
    override func save() {
        var saveRecord :  String = "";
        saveRecord += "ounce : " + ounceText.text! + " , ";
        saveRecord += "pound : " + poundText.text! + " , ";
        saveRecord += "stone : " + stoneText.text! + " , ";
        saveRecord += "gram : " + gramText.text! + " , ";
        saveRecord += "kg : " + kgText.text!
        UserDefaultsHandler.save(data: saveRecord, key: "Weight")
    }
}
