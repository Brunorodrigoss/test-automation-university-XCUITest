//
//  TAUEyesTest.swift
//  TAUUITests
//
//  Created by Bruno Soares on 5/28/19.
//  Copyright © 2019 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest
import EyesXCUI

class TAUEyesTest: TAUUITestBase {
    func testTAUWithEyesXCUI() {
        // Start the test.
        eyes.open(withApplicationName: "TAU", testName: "Live Demo of EyesXCUI SDK!")

        // Visual checkpoint #1.
        eyes.check(withTag: "TAU", andSettings: Target.window().timeout(inSeconds: 5))

        // Click the "Click me!" button.
        XCUIApplication().buttons["enrollButton"].tap()

        // Visual checkpoint #2.
        eyes.checkWindow(withTag: "Please Enter City")
    }

}
