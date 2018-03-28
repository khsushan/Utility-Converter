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
    @IBOutlet weak var weightView: WeightController!
    @IBOutlet weak var tempreatureView: TempreatureController!
    @IBOutlet weak var distanceView: DistanceController!
    @IBOutlet weak var volumeLiquidView: VolumeLiquidController!
    @IBOutlet weak var volumeView: VolumeController!
    @IBOutlet weak var speedView: SpeedController!
    
    //button
    @IBOutlet weak var buttonOne: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        weightView.isHidden = false;
        mainView.addSubview(getCreatedView(view: weightView))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func toolBarButtonPress(_ sender: UIButton) {
        switch sender.tag {
            case 1000:
                mainView.addSubview(getCreatedView(view:weightView));
                break;
            case 2000:
                mainView.addSubview(getCreatedView(view:tempreatureView));
                break;
            case 3000:
                mainView.addSubview(getCreatedView(view:volumeView));
                break;
            case 4000:
                mainView.addSubview(getCreatedView(view:volumeLiquidView));
                break;
            case 5000:
                mainView.addSubview(getCreatedView(view:distanceView));
                break;
            case 6000:
                mainView.addSubview(getCreatedView(view:speedView));
                break;
            default:
                break;
        }
    }
    
    @IBAction func buttonOnePress(_ sender: Any) {
        
    }
    
    func  getCreatedView(view : UIView) ->UIView{
        mainView.subviews.forEach {$0.removeFromSuperview()}
        view.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: view.bounds.height)
        return view;
    }
    
    
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
}

