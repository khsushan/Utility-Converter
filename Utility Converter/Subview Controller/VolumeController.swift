//
//  VolumeController.swift
//  Utility Converter
//
//  Created by Calcey on 3/28/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class VolumeController: BaseSubView {
    @IBOutlet weak var cubicMeterText: UITextField!
    @IBOutlet weak var cubicCentimeterText: UITextField!
    @IBOutlet weak var literText: UITextField!
    
    
    @IBAction func volumeViewEditChange(_ sender: UITextField) {
        let text: String = StringFomatter.formatString(text: sender.text!)
        let model : Volume = Volume();
        model.Input = Double(truncating: NumberFormatter().number(from: text)!)
        model.Tag = sender.tag
        model.Convert();
        cubicMeterText.text = String(format: "%.04f", Float(model.CubicMeter))
        cubicCentimeterText.text = String(format: "%.04f", Float(model.CubicCentimeter))
        literText.text = String(format: "%.04f", Float(model.Liter))
    }
    
    
    @IBAction func volumeViewEditingBegin(_ sender: UITextField) {
        currentTextField = sender;
    }
    
    override func editChanged(sender: UITextField) {
        volumeViewEditChange(sender)
    }
    
    override func save() {
        var saveRecord :  String = "";
        saveRecord += "Cubic Meter : " + cubicMeterText.text! + " = ";
        saveRecord += "Cubic Centimeter : " + cubicCentimeterText.text! + " = ";
        saveRecord += "Liter  : " + literText.text!;
        UserDefaultsHandler.save(data: saveRecord, key: Constant.VOLUME_KEY)
    }
    
}
