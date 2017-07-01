//
//  SwiftDevTools.swift
//  Pods
//
//  Created by FengJerry on 17/7/1.
//

public extension Double{
    
    /*
     *  四舍五入保留Double小数点位数
     */
    func format(f: String) -> String {
        return String(format: "%\(f)f", self)
    }
}

public extension Float{
    
    /*
     *  四舍五入保留Float小数点位数
     */
    func format(f: String) -> String {
        return String(format: "%\(f)f", self)
    }
}
