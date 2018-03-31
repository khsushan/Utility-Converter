//
//  TempreatureController.swift
//  Utility Converter
//
//  Created by Calcey on 3/28/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class TempreatureController: BaseSubView {
    @IBOutlet var celsiusText: UITextField!
    @IBOutlet var kelvinText: UITextField!
    @IBOutlet var fahrenheitText: UITextField!
    
    @IBAction func tempreatureViewEditChange(_ sender: UITextField) {
        let newString = sender.text?.replacingOccurrences(of: "-", with: "", options: .literal, range: nil)
        if(newString != "" ){
            let model : Tempreature = Tempreature();
            model.Input = Double(truncating: NumberFormatter().number(from: sender.text!)!)
            model.Tag = sender.tag
            model.Convert();
            celsiusText.text = String(format: "%.04f", Float(model.Celsius))
            kelvinText.text = String(format: "%.04f", Float(model.Kelvin))
            fahrenheitText.text = String(format: "%.04f", Float(model.Farenhite))
            
        }
        
    }
    
    
    @IBAction func tempreatureViewEditBegin(_ sender: UITextField) {
        currentTextField = sender;
    }
    
    override func editChanged(sender: UITextField) {
        tempreatureViewEditChange(sender);
    }
    
    override func save() {
        var saveRecord :  String = "";
        saveRecord += "Celsius : " + celsiusText.text! + " = ";
        saveRecord += "Kelvin " + kelvinText.text! + " = ";
        saveRecord += "Fahenheit  : " + fahrenheitText.text!;
        UserDefaultsHandler.save(data: saveRecord, key: Constant.TEMP_KEY)
    }
    
}
