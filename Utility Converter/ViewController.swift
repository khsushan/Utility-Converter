//
//  ViewController.swift
//  Utility Converter
//
//  Created by student on 3/14/18.
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideAllViews();
        weightView.isHidden = false;
        // Do any additional setup after loading the view, typically from a nib
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
    
    func hideAllViews(){
        weightView.isHidden = true;
        tempreatureView.isHidden = true;
        volumeView.isHidden = true;
        volumeLiquidView.isHidden = true;
        distanceView.isHidden = true;
        speedView.isHidden = true;
    }
    
}

