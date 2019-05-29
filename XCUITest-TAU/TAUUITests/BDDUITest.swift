//
//  BDDUITest.swift
//  TAUUITests
//
//  Created by Bruno Soares on 5/27/19.
//  Copyright © 2019 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest

class BDDUITest: TAUUITestBase {
    func testThankYouMessageInBddStyle() {
        givenAppIsReady()
        whenIEnter(city: "London")
        whenIEnrolled()
        thenIShouldSeeThankYouMessage()
    }
}

extension TAUUITestBase {

    func givenAppIsReady() {
        XCTContext.runActivity(named: "Given App is Ready") { _ in
            XCTAssertTrue(app.buttons["enrollButton"].exists)
        }
    }

    func whenIEnter(city: String) {
        XCTContext.runActivity(named: "When I enter \(city) ") { _ in
            app.textFields["city"].tap()
            app.textFields["city"].typeText(city)
        }
    }

    func whenIEnrolled() {
        XCTContext.runActivity(named: "When I Enrolled") { _ in
            app.buttons["enrollButton"].tap()
        }
    }

    func thenIShouldSeeThankYouMessage() {
        XCTContext.runActivity(named: "Then I Should See Thanks Message") { _ in
            XCTAssertTrue(app.staticTexts["Thanks for Joining!"].exists)
        }
    }
}
