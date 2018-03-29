//
//  ConstantViewController.swift
//  Utility Converter
//
//  Created by Calcey on 3/29/18.
//  Copyright © 2018 student. All rights reserved.
//



import UIKit
class ConstantViewController :  UIViewController{
    @IBOutlet weak var Line1: UILabel!
    @IBOutlet weak var Line2: UILabel!
    @IBOutlet weak var Line3: UILabel!
    @IBOutlet weak var Line4: UILabel!
    @IBOutlet weak var Line5: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let subScriptFont = UIFont(name: "Times-Bold", size: 10.0)!
        let italicFont = UIFont(name: "Times-Italic", size: 22.0)!
        let text1 = NSMutableAttributedString()
        let text2 = NSMutableAttributedString()
        let text3 = NSMutableAttributedString()
        let text4 = NSMutableAttributedString()
        let text5 = NSMutableAttributedString()
        
        text1.append(NSAttributedString(string:"Electron mass "))
        text1.append(NSAttributedString(string: "𝑚", attributes: [NSAttributedStringKey.font: italicFont]))
        text1.append(NSAttributedString(string: "𝑒", attributes: [NSAttributedStringKey.font: subScriptFont]))
        Line1.attributedText = text1
        
        text2.append(NSAttributedString(string:"Proton mass "))
        text2.append(NSAttributedString(string: "𝑚", attributes: [NSAttributedStringKey.font: italicFont]))
        text2.append(NSAttributedString(string: "𝑝", attributes: [NSAttributedStringKey.font: subScriptFont]))
        Line2.attributedText = text2
        
        text3.append(NSAttributedString(string:"Neutron mass "))
        text3.append(NSAttributedString(string: "𝑚", attributes: [NSAttributedStringKey.font: italicFont]))
        text3.append(NSAttributedString(string: "𝑛", attributes: [NSAttributedStringKey.font: subScriptFont]))
        Line3.attributedText = text3
        
        text4.append(NSAttributedString(string:"Electric permittivity "))
        text4.append(NSAttributedString(string: "𝜀", attributes: [NSAttributedStringKey.font: italicFont]))
        text4.append(NSAttributedString(string: "0", attributes: [NSAttributedStringKey.font: subScriptFont]))
        Line4.attributedText = text4
        
        text5.append(NSAttributedString(string:"Magnetic permeability "))
        text5.append(NSAttributedString(string: "𝜇", attributes: [NSAttributedStringKey.font: italicFont]))
        text5.append(NSAttributedString(string: "0", attributes: [NSAttributedStringKey.font: subScriptFont]))
        Line5.attributedText = text5
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
