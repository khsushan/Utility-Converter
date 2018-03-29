//
//  SpeedController.swift
//  Utility Converter
//
//  Created by Calcey on 3/28/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class SpeedController: UIView {
    
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
    

}
