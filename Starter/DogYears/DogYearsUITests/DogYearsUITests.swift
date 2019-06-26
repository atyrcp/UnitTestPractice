//
//  DogYearsUITests.swift
//  DogYearsUITests
//
//  Created by alien on 2019/6/22.
//  Copyright © 2019 Razeware. All rights reserved.
//

import XCTest

class DogYearsUITests: XCTestCase {

    private var application: XCUIApplication!
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        application = XCUIApplication()
        application.launch()
        
//        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testCalculateEntryyy() {
        
        let entry = application.staticTexts.matching(identifier: "result").firstMatch
        application.buttons["2"].tap()
        application.buttons["4"].tap()
        print("======")
        print(entry.exists)
        print("======")
        XCTAssert(entry.label == "24", "display failure")
    }

    func testExample() {

        let navigationBar1 = application.navigationBars["Master"]
        let button1 = navigationBar1.buttons["Menu"]
        button1.tap()
        XCTAssertFalse(navigationBar1.exists, "why the old one is still here?")
        let navigationBar2 = application.navigationBars["Menu"]
        XCTAssert(navigationBar2.exists, "segue did not happened")

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testSettingsNavigation() {

        let navigationBar1 = application.navigationBars["Master"]
        let button1 = navigationBar1.buttons["Menu"]
        button1.tap()
        XCTAssertFalse(navigationBar1.exists, "why the old one is still here?")
        let navigationBar2 = application.navigationBars["Menu"]
        XCTAssert(navigationBar2.exists, "segue did not happened")

        let tableText = application.tables.staticTexts["Settings"]
        tableText.tap()
        let navigationBar3 = application.navigationBars["Settings"]
        XCTAssert(navigationBar3.exists, "segue did not happened")
    }

    func testAboutNavigation() {

        let navigationBar1 = application.navigationBars["Master"]
        let button1 = navigationBar1.buttons["Menu"]
        button1.tap()
        XCTAssertFalse(navigationBar1.exists, "why the old one is still here?")
        let navigationBar2 = application.navigationBars["Menu"]
        XCTAssert(navigationBar2.exists, "segue did not happened")

        let tableText = application.tables.staticTexts["About"]
        tableText.tap()
        let navigationBar3 = application.navigationBars["About"]
        XCTAssert(navigationBar3.exists, "segue did not happened")
    }

    func testInfoViewcontroller() {

        let navigationBar1 = application.navigationBars["Master"]
        let button1 = navigationBar1.buttons["Menu"]
        button1.tap()
        XCTAssertFalse(navigationBar1.exists, "why the old one is still here?")
        let navigationBar2 = application.navigationBars["Menu"]
        XCTAssert(navigationBar2.exists, "segue did not happened")

        let tableText = application.tables.staticTexts["Information"]
        tableText.tap()
        print("=====")
        print(navigationBar2.exists)

        let navigationBar3 = application.navigationBars["Information"]
        XCTAssert(navigationBar3.exists, "segue did not happened")
    }
    

    
}
