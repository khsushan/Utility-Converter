//
//  UserDefaultHandler.swift
//  Utility Converter
//
//  Created by Calcey on 3/29/18.
//  Copyright © 2018 student. All rights reserved.
//

import Foundation
class  UserDefaultsHandler{
    let defaults = UserDefaults.standard
    var history = [String]()
    
    func  save(data:String, key : String) {
       let array =  defaults.array(forKey: key)
       if (array != nil && history.isEmpty){
            for records in array! {
                history.append(records as! String)
            }
       }
       history.append(data)
        
       defaults.set(history, forKey: key)
       if history.count > 5 {
         history.remove(at: 0) //This is to remove older records
       }
       defaults.set(history, forKey: key)
    }
    
}
