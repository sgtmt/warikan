//
//  WarikanUITests.swift
//  WarikanUITests
//
//  Created by 長沢　遼 on 2016/08/28.
//  Copyright © 2016年 Sgtmt. All rights reserved.
//

import XCTest

class WarikanUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.

        let app = XCUIApplication()
        app.buttons["使い方"].pressForDuration(0.5);
        app.navigationBars["UIView"].childrenMatchingType(.Button).matchingIdentifier("Back").elementBoundByIndex(0).tap()
        app.buttons["使う"].tap()
        let element = app.otherElements.containingType(.NavigationBar, identifier:"Warikan.UseView").childrenMatchingType(.Other).element.childrenMatchingType(.Other).element.childrenMatchingType(.Other).element
        element.childrenMatchingType(.TextField).elementBoundByIndex(0).tap()
        element.tap()
        element.tap()
        element.childrenMatchingType(.TextField).elementBoundByIndex(1).tap()
        element.tap()
        app.buttons["支払"].tap()
    }
    

    }
    






