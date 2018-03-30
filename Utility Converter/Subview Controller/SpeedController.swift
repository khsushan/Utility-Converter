//
//  SpeedController.swift
//  Utility Converter
//
//  Created by Calcey on 3/28/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class SpeedController: BaseSubView {
    
    @IBOutlet var milesPerHourText: UITextField!
    @IBOutlet var kmPerHourText: UITextField!
    @IBOutlet var meterPerSecText: UITextField!
    
    
    @IBAction func speedViewEditChange(_ sender: UITextField) {
        let model : Speed = Speed();
        model.Input = Double(truncating: NumberFormatter().number(from: sender.text!)!)
        model.Tag = sender.tag
        model.Convert();
        milesPerHourText.text = String(model.MilesPerHour)
        kmPerHourText.text = String(model.KMPerHour)
        meterPerSecText.text = String(model.MeterPerSec)
    }
    
    
    @IBAction func speedViewEditingBegin(_ sender: UITextField) {
        currentTextField = sender;
    }
    
    override func editChanged(sender: UITextField) {
        speedViewEditChange(sender)
    }
    
    override func save() {
        var saveRecord :  String = "";
        saveRecord += "Miles per Hour : " + milesPerHourText.text! + " , ";
        saveRecord += "Kilometers per Hour " + kmPerHourText.text! + " , ";
        saveRecord += "Meters per Sec  : " + meterPerSecText.text!;
        UserDefaultsHandler.save(data: saveRecord, key: Constant.SPEED_KEY)
    }

}
