//
//  UserDefaultHandler.swift
//  Utility Converter
//
//  Created by Calcey on 3/29/18.
//  Copyright © 2018 student. All rights reserved.
//

import Foundation
class  UserDefaultsHandler{
     static let defaults = UserDefaults.standard
    
    class func  save(data:String, key : String) {
        var history : [String] = loadHistory(key : key)
       history.append(data)
       defaults.set(history, forKey: key)
       if history.count > 5 {
         history.remove(at: 0) //This is to remove older records
       }
       defaults.set(history, forKey: key)
    }
    
    class func  getData(key:String) -> [String] {
        var history : [String] = loadHistory(key : key);
        history.reverse();
        return history;
    }
    
     private class func  loadHistory(key: String) -> [String]{
        var history = [String]()
        let array =  defaults.array(forKey: key)
        if (array != nil && history.isEmpty){
            for records in array! {
                history.append(records as! String)
            }
        }
        print(history)
        return history;
    }
    
}
