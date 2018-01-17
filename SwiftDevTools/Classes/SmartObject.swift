//
//  SmartObject.swift
//
//  Created by fengjh on 17/7/14.
//
//

import Foundation

protocol Object {
    
    associatedtype T
    
    func clone() -> T
    
    func toString() -> String
}

public class SmartObject : Object{
    
    public func clone() -> SmartObject {
        return self
    }
    
    public func toString() -> String {
        return ""
    }
}
