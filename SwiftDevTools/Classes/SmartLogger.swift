//
//  SmartLogger.swift
//
//  Created by fengjh on 17/7/27.
//

import Foundation

public class SmartLogger {
    
    public static var debugable = true
    
    public static func dLogger(items: Any...) {
        if debugable {
            print(items)
        }
    }
    
    public static func dLogger(items: Any..., separator: String, terminator: String) {
        if debugable {
            print(items , separator , terminator)
        }
    }
    
    public static func NSLog(format: String, args: CVarArg...){
        if debugable {
            NSLog(format: format, args: args)
        }
    }
}
