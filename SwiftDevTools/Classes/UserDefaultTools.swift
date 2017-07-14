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
    
    public class func putIntValue(key : String , value : Int) {
        userDefaults.set(value, forKey: key)
    }
    
    public class func putFloatValue(key : String , value : Float) {
        userDefaults.set(value, forKey: key)
    }
    
    public class func putDoubleValue(key : String , value : Double) {
        userDefaults.set(value, forKey: key)
    }
    
    public class func putBoolValue(key : String , value : Bool) {
        userDefaults.set(value, forKey: key)
    }
    
    public class func putUrlValue(key : String , value : URL) {
        userDefaults.set(value, forKey: key)
    }
    
    public class func putAnyValue(key : String , value : Any) {
        userDefaults.set(value, forKey: key)
    }
    
    public class func getStringValue(key : String) -> String?{
        return userDefaults.string(forKey: key)
    }
    
    public class func getStringArrayValue(key : String) -> [String]? {
        return userDefaults.stringArray(forKey: key)
    }
    
    public class func getIntValue(key : String) -> Int {
        return userDefaults.integer(forKey: key)
    }
    
    public class func getFloatValue(key : String) -> Float {
        return userDefaults.float(forKey: key)
    }
    
    public class func getDoubleValue(key : String) -> Double {
        return userDefaults.double(forKey: key)
    }
    
    public class func getBoolValue(key : String) -> Bool {
        return userDefaults.bool(forKey: key)
    }
    
    public class func getArrayValue(key : String) -> [Any]? {
        return userDefaults.array(forKey: key)
    }
    
    public class func getDataValue(key : String) -> Data? {
        return userDefaults.data(forKey: key)
    }
    
    public class func getDictValue(key : String) -> [String : Any]? {
        return userDefaults.dictionary(forKey: key)
    }
    
    public class func getAnyValue(key : String) -> Any? {
        return userDefaults.object(forKey: key)
    }
    
    public class func removeObject(key : String) {
        userDefaults.removeObject(forKey: key)
    }
    
}
