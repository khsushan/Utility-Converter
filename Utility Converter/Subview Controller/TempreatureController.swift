//
//  TempreatureController.swift
//  Utility Converter
//
//  Created by Calcey on 3/28/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class TempreatureController: UIView {
    @IBOutlet var celsiusText: UITextField!
    @IBOutlet var kelvinText: UITextField!
    @IBOutlet var fahrenheitText: UITextField!
    
    @IBAction func tempreatureViewEditChange(_ sender: UITextField) {
        let model : Tempreature = Tempreature();
        model.Input = Double(truncating: NumberFormatter().number(from: sender.text!)!)
        model.Tag = sender.tag
        model.Convert();
        celsiusText.text = String(model.Celsius)
        kelvinText.text = String(model.Kelvin)
        fahrenheitText.text = String(model.Farenhite)
    }
    
}
