//
//  TAUUITestBase.swift
//  TAUUITests
//
//  Created by Bruno Soares on 5/27/19.
//  Copyright © 2019 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest

class  TAUUITestBase: XCTestCase {

    var app = XCUIApplication()

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch()
    }

    override func tearDown() {
        super.tearDown()
    }

    func XCTAsyncAssert(_ element: XCUIElement){
        let isElementExist = element.waitForExistence(timeout: 10)
        if isElementExist {
            XCTAssertTrue(element.exists)
        }
    }
}
