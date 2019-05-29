//
//  TAUUITestBase.swift
//  TAUUITests
//
//  Created by Bruno Soares on 5/27/19.
//  Copyright © 2019 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest
import EyesXCUI

class  TAUUITestBase: XCTestCase {

    var app = XCUIApplication()

    // Initialize the eyes SDK and set your private API key.
    var eyes = Eyes()

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch()
        eyes.apiKey = "e26YOyOWCSCP2GQgNehae103S8c1IMbhB1g3DijtrFRtk110"//"//YOUR_API_KEY " 
    }

    override func tearDown() {
        super.tearDown()

        do {
            try eyes.close()
        } catch {
            eyes.abortIfNotClosed()
        }
    }

    func XCTAsyncAssert(_ element: XCUIElement){
        let isElementExist = element.waitForExistence(timeout: 10)
        if isElementExist {
            XCTAssertTrue(element.exists)
        }
    }
}
