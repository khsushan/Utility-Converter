//
//  ViewController.swift
//  Utility Converter
//
//  Created by Ushan on 3/14/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {



    @IBOutlet var mainView: UIView!
    @IBOutlet weak var weightView: WeightController!
    @IBOutlet weak var tempreatureView: TempreatureController!
    @IBOutlet weak var distanceView: DistanceController!
    @IBOutlet weak var volumeLiquidView: VolumeLiquidController!
    @IBOutlet weak var volumeView: VolumeController!
    @IBOutlet weak var speedView: SpeedController!
    var activeView: BaseSubView!
    
    //button
    @IBOutlet weak var buttonOne: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.addSubview(getCreatedView(view: weightView))
        activeView = weightView;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func toolBarButtonPress(_ sender: UIButton) {
        switch sender.tag {
            case 1000:
                mainView.addSubview(getCreatedView(view:weightView));
                activeView = weightView;
                break;
            case 2000:
                mainView.addSubview(getCreatedView(view:tempreatureView));
                activeView = tempreatureView;
                break;
            case 3000:
                mainView.addSubview(getCreatedView(view:volumeView));
                activeView =  volumeView;
                break;
            case 4000:
                mainView.addSubview(getCreatedView(view:volumeLiquidView));
                activeView  = volumeLiquidView;
                break;
            case 5000:
                mainView.addSubview(getCreatedView(view:distanceView));
                activeView = distanceView;
                break;
            case 6000:
                mainView.addSubview(getCreatedView(view:speedView));
                activeView = speedView;
                break;
            default:
                break;
        }
    }
    
    @IBAction func keyboardButtonPress(_ sender: UIButton) {
        let textField: UITextField  = activeView.currentTextField;
        if let selectedRange = textField.selectedTextRange {
            var cursorPosition = textField.offset(from: textField.beginningOfDocument, to: selectedRange.start)
            if(cursorPosition != 0){
                var array = Array(textField.text!)
                if(array.count == cursorPosition){
                    cursorPosition = cursorPosition - 1;
                }
                let index = textField.text?.index(of: array[cursorPosition]) ;
                activeView.currentTextField.text?.insert((sender.currentTitle?.last)!, at: index!)
            }else{
                activeView.currentTextField.text?.append(sender.currentTitle!)
            }
            
            activeView.editChanged(sender : activeView.currentTextField)
        }
    }
    @IBAction func backButtonAction(_ sender: UIButton) {
        let textField: UITextField  = activeView.currentTextField;
        if let selectedRange = textField.selectedTextRange {
            
            let cursorPosition = textField.offset(from:textField.beginningOfDocument, to: selectedRange.start)
            if(cursorPosition != 0){
                var array = Array(textField.text!)
                array.remove(at : cursorPosition-1)
                textField.text = String(array)
                print(String(array))
                activeView.editChanged(sender: textField);
            }
            
            
        }
        
    }
    
    @IBAction func negativeButtonAction(_ sender: UIButton) {
        if(activeView is TempreatureController){
            if(activeView.currentTextField.text?.first != "-"){
                var array =  Array(activeView.currentTextField.text!);
                array.insert("-", at: 0)
                activeView.currentTextField.text = String(array)
                activeView.editChanged(sender : activeView.currentTextField)
            }
        }
    }
    func  getCreatedView(view : UIView) ->UIView{
        mainView.subviews.forEach {$0.removeFromSuperview()}
        view.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: view.bounds.height)
        return view;
    }
    
    @IBAction func saveButtonClick(_ sender: UIButton) {
        activeView.save();
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let historyViewController = segue.destination as? HistoryViewController {
            if (activeView  is WeightController){
                historyViewController.key = Constant.WEIGHT_KEY;
            }else if(activeView is TempreatureController){
                historyViewController.key = Constant.TEMP_KEY
            }else if(activeView is VolumeController){
                historyViewController.key = Constant.VOLUME_KEY
            }else if(activeView is VolumeLiquidController){
                historyViewController.key = Constant.VOLUMELIQUID_KEY
            }else if(activeView is DistanceController){
                historyViewController.key = Constant.DISTANCE_KEY
            }else if(activeView is SpeedController){
                historyViewController.key = Constant.SPEED_KEY
            }
        }
    }
}

