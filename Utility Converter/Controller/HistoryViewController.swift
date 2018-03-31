//
//  HistoryViewController.swift
//  Utility Converter
//
//  Created by Calcey on 3/30/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit
class HistoryViewController :  UIViewController, UITableViewDelegate, UITableViewDataSource{
    @IBOutlet weak var back: UINavigationItem!
    
    @IBOutlet weak var historyTable: UITableView!
    
    var key : String =  ""
    var history = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        historyTable.delegate = self;
        historyTable.dataSource = self;
        print(key)
        history = UserDefaultsHandler.getData(key: key)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return history.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = historyTable.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.numberOfLines = 0
        cell?.textLabel?.textAlignment = NSTextAlignment.center
        cell?.textLabel?.text = history[indexPath.row]
        
        return cell!

    }
    
    
}
