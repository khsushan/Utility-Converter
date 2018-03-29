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
        let model : Volume = Volume();
        model.Input = Double(truncating: NumberFormatter().number(from: sender.text!)!)
        model.Tag = sender.tag
        model.Convert();
        cubicMeterText.text = String(model.CubicMeter)
        cubicCentimeterText.text = String(model.CubicCentimeter)
        literText.text = String(model.Liter)
    }
    
    
    @IBAction func volumeViewEditingBegin(_ sender: UITextField) {
        currentTextField = sender;
    }
    
    override func editChanged(sender: UITextField) {
        volumeViewEditChange(sender)
    }
    
}
