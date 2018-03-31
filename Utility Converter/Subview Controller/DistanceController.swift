//
//  DistanceController.swift
//  Utility Converter
//
//  Created by Sachith Ushan on 3/28/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class DistanceController: BaseSubView {

    @IBOutlet weak var cmText: UITextField!
    @IBOutlet var meterText: UITextField!
    @IBOutlet var inchText: UITextField!
    @IBOutlet var mmText: UITextField!
    @IBOutlet var yardText: UITextField!
    
    @IBAction func distanceViewEditChange(_ sender: UITextField) {
        let text: String = StringFomatter.formatString(text: sender.text!)
        let model : Distance = Distance();
        model.Input = Double(truncating: NumberFormatter().number(from: text)!)
        model.Tag = sender.tag
        model.Convert();
        cmText.text = String(model.Cm)
        meterText.text = String(model.Meter)
        mmText.text = String(model.Mm)
        yardText.text = String(model.Yard)
        inchText.text = String(model.Inch)
    }
    
    @IBAction func distanceViewEditingBegin(_ sender: UITextField) {
        currentTextField = sender;
    }
    
    override func editChanged(sender : UITextField) {
        distanceViewEditChange(sender)
    }
    
    override func save() {
        var saveRecord :  String = "";
        saveRecord += "Centimeter : " + cmText.text! + " = ";
        saveRecord += "Meter : " + meterText.text! + " = ";
        saveRecord += "Inch : " + inchText.text! + " = ";
        saveRecord += "Milimeter : " + mmText.text! + " = ";
        saveRecord += "Yard : " + yardText.text!
        UserDefaultsHandler.save(data: saveRecord, key: Constant.DISTANCE_KEY)
    }
    
}
