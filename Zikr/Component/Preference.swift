//
//  Preference.swift
//  Zikr
//
//  Created by Dicky Alamsyah on 28/04/22.
//

import Foundation

class PreferenceUtils {

    static func readInt(forKey key: String) -> Int{
        return UserDefaults.standard.integer(forKey: key)
    }

    static func saveInt(value: Int, forKey key: String){
        UserDefaults.standard.set(value, forKey: key)
    }
}
