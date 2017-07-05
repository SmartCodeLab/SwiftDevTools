//
//  SwiftDevTools.swift
//
//  Created by fengjh on 17/7/1.
//

import Foundation

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

public extension String{
    
    /*
     * 获取字符串到内容长度
     */
    func length() -> Int {
        return self.characters.count
    }
    
    /*
     * 判断字符串前缀
     */
    func startWith(prefix : String) -> Bool {
        return self.hasPrefix(prefix)
    }
    
    /*
     * 判断字符串后缀
     */
    func endsWith(suffix : String) -> Bool {
        return self.hasSuffix(suffix)
    }
    
    /*
     * 字符串截取
     */
    func subString(beginIndex : Int) throws -> String {
        if (beginIndex > 0 && beginIndex >= self.length())||(beginIndex < 0 && beginIndex < -self.length()){
            print("SwiftDevTools : error : IndexOutOfBoundsException")
            throw SDTError.IndexOutOfBoundsException
        }
        let index = self.index(self.startIndex, offsetBy: beginIndex)
        return self.substring(from: index)
    }
    
    /*
     * 字符串截取
     */
    func subString(endIndex : Int) throws -> String {
        if (endIndex > 0 && endIndex >= self.length())||(endIndex < 0 && endIndex < -self.length()){
            print("SwiftDevTools : error : IndexOutOfBoundsException")
            throw SDTError.IndexOutOfBoundsException
        }
        let index = self.index(self.endIndex, offsetBy: endIndex)
        return self.substring(to: index)
    }
    
    /*
     * 字符串截取[beginIndex,endIndex)
     */
    func subString(beginIndex : Int, endIndex : Int) throws -> String {
        if (beginIndex > 0 && beginIndex >= self.length())||(beginIndex < 0 && beginIndex < -self.length()){
            print("SwiftDevTools : error : IndexOutOfBoundsException")
            throw SDTError.IndexOutOfBoundsException
        }
        if (endIndex > 0 && endIndex >= self.length())||(endIndex < 0 && endIndex < self.length()){
            print("SwiftDevTools : error : IndexOutOfBoundsException")
            throw SDTError.IndexOutOfBoundsException
        }
        let begin = self.index(self.startIndex, offsetBy: beginIndex)
        let end = self.index(self.startIndex, offsetBy: endIndex)
        let range : Range = begin..<end
        return self.substring(with: range)
    }
    
    /*
     * 字符串分隔
     */
    func split(regex : Character) -> [String] {
        return self.characters.split(separator: regex).map(String.init)
    }
    
    /*
     * 去掉字符串前后的空格
     */
    func trim() -> String {
        return self.trimmingCharacters(in: .whitespaces)
    }
    
    /*
     * 去掉字符串前后指定的字符串
     */
    func trim(trim : String) -> String {
        let set = CharacterSet(charactersIn : trim)
        return self.trimmingCharacters(in: set)
    }
    
    /*
     * 将所有字符串转换为大写
     */
    func toUpperCase() -> String {
        if #available(iOS 9.0, *) {
            return self.localizedUppercase
        }
        // Fallback on earlier versions
        return self.uppercased()
    }
    
    /*
     * 将所有字符串转换为小写
     */
    func toLowerCase() -> String {
        if #available(iOS 9.0, *) {
            return self.localizedLowercase
        }
        // Fallback on earlier versions
        return self.lowercased()
    }
    
    /*
     * 将字符串转换为首字母大写
     */
    func toCapitalized() -> String {
        if #available(iOS 9.0, *) {
            return self.localizedCapitalized
        }
        // Fallback on earlier versions
        return self.capitalized
    }
    
    /// 将十六进制颜色转换为UIColor
    func uiColor() -> UIColor {
        // 存储转换后的数值
        var red:UInt32 = 0, green:UInt32 = 0, blue:UInt32 = 0
        
        // 分别转换进行转换
        Scanner(string: self[0..<2]).scanHexInt32(&red)
        
        Scanner(string: self[2..<4]).scanHexInt32(&green)
        
        Scanner(string: self[4..<6]).scanHexInt32(&blue)
        
        return UIColor(red: CGFloat(red)/255.0, green: CGFloat(green)/255.0, blue: CGFloat(blue)/255.0, alpha: 1.0)
    }
    
    /// String使用下标截取字符串
    /// 例: "示例字符串"[0..<2] 结果是 "示例"
    subscript (r: Range<Int>) -> String {
        get {
            let startIndex = self.index(self.startIndex, offsetBy: r.lowerBound)
            let endIndex = self.index(self.startIndex, offsetBy: r.upperBound)
            return self[startIndex..<endIndex]
        }
    }
    
}

extension UIColor {
    
    /// 用十六进制颜色创建UIColor
    /// - Parameter hexColor: 十六进制颜色 (0F0F0F)
    convenience init(hexColor: String) {
        
        // 存储转换后的数值
        var red:UInt32 = 0, green:UInt32 = 0, blue:UInt32 = 0
        
        // 分别转换进行转换
        Scanner(string: hexColor[0..<2]).scanHexInt32(&red)
        
        Scanner(string: hexColor[2..<4]).scanHexInt32(&green)
        
        Scanner(string: hexColor[4..<6]).scanHexInt32(&blue)
        
        self.init(red: CGFloat(red)/255.0, green: CGFloat(green)/255.0, blue: CGFloat(blue)/255.0, alpha: 1.0)
    }
}
