//
//  XCUITestsViewUITests.swift
//  XCUITestsUITests
//
//  Created by Maziar Layeghkar on 03.06.24.
//

import XCTest

final class XCUITestsViewUITests: XCTestCase {

    let app = XCUIApplication()
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launch()
    }

    override func tearDownWithError() throws {
    }
    
    func test_signUpButton_shouldNotSignIn() {
        
        
        
    }
    
    func test_signUpButton_shouldSignIn() {
        
        app.textFields["Add your name..."].tap()
        
        let aKey = app.keys["A"]
        aKey.tap()
        aKey.tap()
        
        let aKey2 = app.keys["a"]
        aKey2.tap()
        aKey2.tap()
        aKey2.tap()
        aKey2.tap()
        app.buttons["Return"].tap()
        app.buttons["Sign up"].tap()
        app.navigationBars["Welcome"].staticTexts["Welcome"].tap()
    }
}
