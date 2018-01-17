import UIKit
import XCTest
import SwiftDevTools

class Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        XCTAssert(true, "Pass")
        let p1 : Double = 3.1415926
        print(p1)
        print(p1.format(f: ".3"))
        let p2 : String = "  Hello Swift  "
        print(p2.length())
        try! print(p2.subString(beginIndex: 0))
        try! print(p2.subString(beginIndex: 1))
        try! print(p2.subString(beginIndex: 2))
        try! print(p2.subString(endIndex: -2))
        try! print(p2.subString(beginIndex: 1, endIndex: 7))
        let pp1 = try! p2.subString(beginIndex: 5)
        print(pp1)
        print(p2.trim())
        print(p2.trim(trim: " "))
        print(getDeviceToken())
        print(getDeviceName())
        print(getSystemName())
        print(getSystemVersion())
        print(getSystemModel())
        let line = "BLANCHE:   I don't want realism. I want magic!"
//        print(line.characters.split(separator: " ")
//                                  .map(String.init))
        print(line.split(regex: " "))
        
        UserDefaultTools.putFloatValue(key: "key", value: 10.2)
        print(UserDefaultTools.getFloatValue(key: "key"))
        
        print(SmartLogger.debugable)
        SmartLogger.debugable = false
        print(SmartLogger.debugable)
//        SmartLogger.pLog(<#T##items: Any...##Any#>, separator: <#T##String#>, terminator: <#T##String#>)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
