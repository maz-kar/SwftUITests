//
//  XCUITestsViewUITests.swift
//  XCUITestsUITests
//
//  Created by Maziar Layeghkar on 03.06.24.
//

import XCTest

final class XCUITestsViewUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
        XCUIApplication().launch()
    }

    override func tearDownWithError() throws {
    }
}
