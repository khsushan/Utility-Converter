//
//  ViewController.swift
//  Utility Converter
//
//  Created by Ushan on 3/14/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var toolBar: UIToolbar!

    @IBOutlet var mainView: UIView!
    @IBOutlet weak var weightView: UIView!
    @IBOutlet weak var tempreatureView: UIView!
    @IBOutlet weak var distanceView: UIView!
    @IBOutlet weak var volumeLiquidView: UIView!
    @IBOutlet weak var volumeView: UIView!
    @IBOutlet weak var speedView: UIView!
    
    //text Views
    @IBOutlet weak var celsiusText: UITextField!
    @IBOutlet weak var fahrenheitText: UITextField!
    @IBOutlet weak var kelvinText: UITextField!
    
    @IBOutlet weak var ounceText: UITextField!
    @IBOutlet weak var gramText: UITextField!
    @IBOutlet weak var poundText: UITextField!
    @IBOutlet weak var stoneText: UITextField!
    @IBOutlet weak var poundSmallText: UITextField!
    @IBOutlet weak var kgText: UITextField!
    
    @IBOutlet weak var m3Text: UITextField!
    @IBOutlet var literText: [UITextField]!
    @IBOutlet weak var cm3Text: UITextField!
    
    @IBOutlet weak var galloonText: UITextField!
    @IBOutlet weak var literliquidText: UITextField!
    @IBOutlet weak var pintText: UITextField!
    @IBOutlet weak var fluidOunceText: UITextField!
    
    @IBOutlet weak var cmText: UITextField!
    @IBOutlet var meterText: [UITextField]!
    @IBOutlet var inchText: [UITextField]!
    @IBOutlet var mmText: [UITextField]!
    @IBOutlet weak var yardText: UITextField!
    
    @IBOutlet var milesHourText: [UITextField]!
    @IBOutlet var kmHourText: [UITextField]!
    @IBOutlet var meterSecText: [UITextField]!
    
    
    //button
    @IBOutlet weak var buttonOne: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        weightView.isHidden = false;
        
        //define weight changes
        ounceText.addTarget(self, action: "textFieldDidWeightChange:", for: UIControlEvents.editingChanged);

        hideAllViews();
    }
    
    @objc func textFieldDidWeightChange(textField: UITextField){
        
        //print("Text changed")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func temperatureButtonAction(_ sender: Any) {
        hideAllViews();
        tempreatureView.isHidden = false;
        
    }
    @IBAction func weightButtonAction(_ sender: Any) {
        hideAllViews();
        weightView.isHidden = false;
        
    }
    
    @IBAction func distanceButtonAction(_ sender: Any) {
        hideAllViews();
        distanceView.isHidden = false;
    }
    
    @IBAction func volumeLiquidButton(_ sender: Any) {
        hideAllViews();
        volumeLiquidView.isHidden = false;
    }
    @IBAction func volumeButtonAction(_ sender: Any) {
        hideAllViews();
        volumeView.isHidden = false;
    }
    @IBAction func speedButtonAction(_ sender: Any) {
        hideAllViews();
        speedView.isHidden = false;
    }
    
    @IBAction func buttonOnePress(_ sender: Any) {
        let text : UITextField = getSelectedTextField()!;
        text.text = "1";
    }
    
    func hideAllViews(){
        weightView.isHidden = true;
        tempreatureView.isHidden = true;
        volumeView.isHidden = true;
        volumeLiquidView.isHidden = true;
        distanceView.isHidden = true;
        speedView.isHidden = true;
    }
    
    func getSelectedTextField() -> UITextField? {
        
        let totalTextFields = getTextFieldsInView(view: self.mainView)
        
        for textField in totalTextFields{
            if textField.isFirstResponder{
                return textField
            }
        }
        
        return nil
        
    }
    
    func getTextFieldsInView(view: UIView) -> [UITextField] {
        
        var totalTextFields = [UITextField]()
        
        for subview in view.subviews as [UIView] {
            if let textField = subview as? UITextField {
                totalTextFields += [textField]
            } else {
                totalTextFields += getTextFieldsInView(view: subview)
            }
        }
        
        return totalTextFields
    }
    
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
}

