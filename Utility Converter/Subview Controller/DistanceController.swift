//
//  DistanceController.swift
//  Utility Converter
//
//  Created by Frank Thamel on 3/28/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class DistanceController: UIView {

    @IBOutlet weak var cmText: UITextField!
    @IBOutlet var meterText: UITextField!
    @IBOutlet var inchText: UITextField!
    @IBOutlet var mmText: UITextField!
    @IBOutlet var yardText: UITextField!
    
    @IBAction func distanceViewEditChange(_ sender: UITextField) {
        let model : Distance = Distance();
        model.Input = Double(truncating: NumberFormatter().number(from: sender.text!)!)
        model.Tag = sender.tag
        model.Convert();
        cmText.text = String(model.Cm)
        meterText.text = String(model.Meter)
        mmText.text = String(model.Mm)
        yardText.text = String(model.Yard)
        inchText.text = String(model.Inch)
    }
    
}
