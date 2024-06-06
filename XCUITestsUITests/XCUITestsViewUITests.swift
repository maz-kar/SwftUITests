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
        let textField = app.textFields["SignUpTextField"]
        textField.tap()
    
        let returnButton = app.buttons["Return"]
        returnButton.tap()
        
        let signUpButton = app.buttons["SignUpButton"]
        signUpButton.tap()
        
        let navBar = app.navigationBars["Welcome"]
        
        XCTAssertFalse(navBar.exists)
        
    }
    
    func test_signUpButton_shouldSignIn() {
        //Given
        let textField = app.textFields["SignUpTextField"]
        
        //When
        textField.tap()
        
        let keyA = app.keys["A"]
        keyA.tap()
        
        let keya = app.keys["a"]
        keya.tap()
        keya.tap()
        
        let returnButton = app.buttons["Return"]
        returnButton.tap()
        
        let signUpButton = app.buttons["SignUpButton"]
        signUpButton.tap()
        
        let navBar = app.navigationBars["Welcome"]
        
        //Then
        XCTAssertTrue(navBar.exists)
    }

}
