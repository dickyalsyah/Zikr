//
//  Preferences.swift
//  Zikr
//
//  Created by Dicky Alamsyah on 28/04/22.
//

import Foundation

class Preferences {
    
    static func saveInt(value: Int, forKey key: String){
        UserDefaults.standard.set(value, forKey: key)
    }
    
    static func saveFloat(value: Float, forKey key: String){
        UserDefaults.standard.set(value, forKey: key)
    }
    
    static func readInt(forKey key: String) -> Int{
        return UserDefaults.standard.integer(forKey: key)
    }
    
    static func readFloat(forKey key: String) -> Float{
        return UserDefaults.standard.float(forKey: key)
    }
}
