//
//  UserDefaultTools.swift
//
//  Created by fengjh on 17/7/13.
//
//

import Foundation

public class UserDefaultTools {
    
    class var userDefaults : UserDefaults {
        return UserDefaults.standard
    }
    
    class func putIntValue(key : String , value : Int) {
        userDefaults.set(value, forKey: key)
    }
    
    class func putFloatValue(key : String , value : Float) {
        userDefaults.set(value, forKey: key)
    }
    
    class func putDoubleValue(key : String , value : Double) {
        userDefaults.set(value, forKey: key)
    }
    
    class func putBoolValue(key : String , value : Bool) {
        userDefaults.set(value, forKey: key)
    }
    
    class func putUrlValue(key : String , value : URL) {
        userDefaults.set(value, forKey: key)
    }
    
    class func putAnyValue(key : String , value : Any) {
        userDefaults.set(value, forKey: key)
    }
    
    class func getIntValue(key : String) -> Int {
        return userDefaults.integer(forKey: key)
    }
    
    class func getFloatValue(key : String) -> Float {
        return userDefaults.float(forKey: key)
    }
    
    class func getDoubleValue(key : String) -> Double {
        return userDefaults.double(forKey: key)
    }
    
    class func getBoolValue(key : String) -> Bool {
        return userDefaults.bool(forKey: key)
    }
    
    class func getArrayValue(key : String) -> [Any] {
        return userDefaults.array(forKey: key)!
    }
    
    class func getDataValue(key : String) -> Data {
        return userDefaults.data(forKey: key)!
    }
    
    class func getDictValue(key : String) -> [String : Any] {
        return userDefaults.dictionary(forKey: key)!
    }
    
    class func getAnyValue(key : String) -> Any {
        return userDefaults.object(forKey: key)!
    }
    
    class func removeObject(key : String) {
        userDefaults.removeObject(forKey: key)
    }
    
}
