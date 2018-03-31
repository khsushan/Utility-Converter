//
//  VolumeLiquidController.swift
//  Utility Converter
//
//  Created by Calcey on 3/28/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class VolumeLiquidController: BaseSubView {

    @IBOutlet var galoonText: UITextField!
    @IBOutlet var literLiquidText: UITextField!
    @IBOutlet var pintText: UITextField!
    @IBOutlet var fluidOunceText: UITextField!
    
    @IBAction func volumeLiquidTextEditChange(_ sender: UITextField) {
        let text: String = StringFomatter.formatString(text: sender.text!)
        let model : VolumeLiquid = VolumeLiquid();
        model.Input = Double(truncating: NumberFormatter().number(from: text)!)
        model.Tag = sender.tag
        model.Convert();
        galoonText.text = String(model.Galoon)
        literLiquidText.text = String(model.Liter)
        pintText.text = String(model.Pint)
        fluidOunceText.text = String(model.FluidOunce)
    }
    
    
    @IBAction func volumeLiquidViewEditingBegin(_ sender: UITextField) {
        currentTextField = sender;
    }
    
    override func editChanged(sender: UITextField) {
        volumeLiquidTextEditChange(sender)
    }
    
    override func save() {
        var saveRecord :  String = "";
        saveRecord += "Galoon : " + galoonText.text! + " = ";
        saveRecord += "Liter : " + literLiquidText.text! + " = ";
        saveRecord += "Pint  : " + pintText.text! + " = " ;
        saveRecord += "Fluid Ounce  : " + fluidOunceText.text!;
        UserDefaultsHandler.save(data: saveRecord, key: Constant.VOLUMELIQUID_KEY)
    }

}
