//
//  PKUITests.swift
//  PKUITests
//
//  Created by YoursRavindra on 10/27/20.
//  Copyright © 2020 T-Mobile Inc. All rights reserved.
//

import XCTest

class PKUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }
    override func tearDownWithError() throws {
    }

    func testExample() throws {
        let app = XCUIApplication()
        app.launch()
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
