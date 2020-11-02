//
//  PKUITestBase.swift
//  PKUITests
//
//  Created by YoursRavindra on 10/27/20.
//  Copyright © 2020 T-Mobile Inc. All rights reserved.
//

import Foundation
import XCTest

class PKUITestBase: XCTestCase {
    
    var app = XCUIApplication()
    
    override func setUpWithError() throws {
        super.setUp()
        continueAfterFailure = false
        app.launch()
    }

    override func tearDownWithError() throws {
        super.tearDown()
    }
}

