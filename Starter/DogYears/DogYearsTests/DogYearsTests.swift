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
    var responseData: Data?
    
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
    
    func testTextFromServer1() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        XCTAssertNotNil(storyboard, "can not instantiate the storyboard")
        guard let viewcontroller = storyboard.instantiateViewController(withIdentifier: "InformationView") as? InfoViewController else {
            XCTAssert(false, "fail to instantiate the viewcontroller")
            return
        }
        _ = viewcontroller.view
        guard let text1 = viewcontroller.txtInfo.text else {
            XCTAssert(false, "text is nil")
            return
        }

        viewcontroller.loadContent()
        let pred = NSPredicate(format: "text != %@", text1)
        let expect = expectation(for: pred, evaluatedWith: viewcontroller.txtInfo, handler: nil)
        let result = XCTWaiter.wait(for: [expect], timeout: 5)

        XCTAssert(result == XCTWaiter.Result.completed, "text did not change after loading the content")
    }
    
//    func testTextFromServer2() {
//        let url = "https://raw.githubusercontent.com/FahimF/Test/master/DogYears-Info.rtf"
//        HTTPClient.shared.get(url: url) { (data, error) in
//            self.responseData = data
//        }
//        let pred = NSPredicate(format: "responseData != nil")
//        let expect = expectation(for: pred, evaluatedWith: self, handler: nil)
//        let result = XCTWaiter.wait(for: [expect], timeout: 5)
//        if result == XCTWaiter.Result.completed {
//            XCTAssertNotNil(responseData, "data is nil")
//        } else {
//            XCTAssert(false, "did not finish the connection")
//        }
//    }
//
//    func testTextFromServer3() {
//        let url = "https://raw.githubusercontent.com/FahimF/Test/master/DogYears-Info.rtf"
//        let expect = self.expectation(description: "url connection with \(url)")
//        HTTPClient.shared.get(url: url) { (data, error) in
//            XCTAssertNotNil(data, "data is nil")
//            self.responseData = data
//            expect.fulfill()
//        }
//        waitForExpectations(timeout: 5, handler: nil)
//        XCTAssertNotNil(responseData, "data is nil")
//    }
    
    func testTextFromServer4UsingMockObject() {
        let url = "https://raw.githubusercontent.com/FahimF/Test/master/DogYears-Info.rtf"
        let session = MockSession()
        let client = HTTPClient(session: session)
        client.get(url: url) { (data, error) in
            self.responseData = data
        }
        let pred = NSPredicate(format: "responseData != nil")
        let expect = expectation(for: pred, evaluatedWith: self, handler: nil)
        let result = XCTWaiter.wait(for: [expect], timeout: 5)
        if result == XCTWaiter.Result.completed {
            XCTAssertNotNil(responseData, "data is nil")
        } else {
            XCTAssert(false, "did not finish the connection")
        }
    }
    
    func testSettingsViewController() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let viewcontroller = storyboard.instantiateViewController(withIdentifier: "SettingsView") as? SettingsViewController else {
            XCTAssert(false, "can not instantiate viewcontroller")
            return
        }
        let view = viewcontroller.view
        XCTAssertNotNil(view, "cant create the view of SettingsViewController")
        
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
