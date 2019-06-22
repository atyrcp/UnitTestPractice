//
//  DogYearsUITests.swift
//  DogYearsUITests
//
//  Created by alien on 2019/6/22.
//  Copyright © 2019 Razeware. All rights reserved.
//

import XCTest

class DogYearsUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        
        let app = XCUIApplication()
        let menuButton = app.navigationBars["Master"].buttons["Menu"]
        menuButton.tap()
        
        let tablesQuery2 = app.tables
        let calculatorStaticText = tablesQuery2/*@START_MENU_TOKEN@*/.staticTexts["Calculator"]/*[[".cells.staticTexts[\"Calculator\"]",".staticTexts[\"Calculator\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        calculatorStaticText.tap()
        app.buttons["8"].tap()
        app.buttons["3"].tap()
        app.buttons["×"].tap()
        app.buttons["6"].tap()
        app.buttons["="].tap()
        menuButton.tap()
        calculatorStaticText.tap()
        menuButton.tap()
        
        let tablesQuery = tablesQuery2
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Information"]/*[[".cells.staticTexts[\"Information\"]",".staticTexts[\"Information\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        menuButton.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Settings"]/*[[".cells.staticTexts[\"Settings\"]",".staticTexts[\"Settings\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let cellsQuery = app.collectionViews.cells
        cellsQuery.otherElements.containing(.staticText, identifier:"Night").staticTexts["6"].tap()
        
        let dayElementsQuery = cellsQuery.otherElements.containing(.staticText, identifier:"Day")
        dayElementsQuery.buttons["human"].tap()
        dayElementsQuery.staticTexts["◀︎"].tap()
        app.navigationBars["Settings"].buttons["Menu"].tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["About"]/*[[".cells.staticTexts[\"About\"]",".staticTexts[\"About\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.navigationBars["About"].buttons["Menu"].tap()
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

}
