//
//  DogYearsTests.swift
//  DogYearsTests
//
//  Created by alien on 2019/6/9.
//  Copyright © 2019 Razeware. All rights reserved.
//

import XCTest
@testable import DogYears

class DogYearsTests: XCTestCase {

    let calculator = Calculator()
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAdd() {
        let result = calculator.evaluate(op: "+", arg1: 7, arg2: 12)
        XCTAssert(result == 19, "fail in testAdd function")
    }

    func testMinus() {
        
        let result = calculator.evaluate(op: "-", arg1: 27, arg2: 3)
        
        XCTAssert(result == 24, "fail in testMinus function")
    }
    
    func testResult() {
        let result = calculator.evaluate(op: "+", arg1: 3, arg2: 3)
        let resutl2 = calculator.result
        XCTAssert(result == resutl2, "fail in testResult function")
    }
    
    func testClear() {
        calculator.clear()
        let result = calculator.result
        XCTAssert(result == 0.0, "fail in testClear function, clear function not working correctly")
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
