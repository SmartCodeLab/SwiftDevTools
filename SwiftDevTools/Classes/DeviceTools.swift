//
//  DeviceTools.swift
//  Pods
//
//  Created by FengJerry on 17/7/3.
//
//

import Foundation

/*
 * 获取设备token
 */
public func getDeviceToken() -> String {
    return (UIDevice.current.identifierForVendor?.uuidString)!
}

/*
 * 获取设备名称
 */
public func getDeviceName() -> String {
    return UIDevice.current.name
}

/*
 * 获取系统名称
 */
public func getSystemName() -> String {
    return UIDevice.current.systemName
}

/*
 * 获取系统版本
 */
public func getSystemVersion() -> String {
    return UIDevice.current.systemVersion
}

/*
 * 获取设备型号
 */
public func getSystemModel() -> String {
    return UIDevice.current.model
}

/*
 * 获取设备区域化型号
 */
public func getLocalizedSystemModel() -> String {
    return UIDevice.current.localizedModel
}
