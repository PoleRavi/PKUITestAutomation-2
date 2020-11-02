//
//  PKUIElements.swift
//  PKUITests
//
//  Created by YoursRavindra on 10/29/20.
//  Copyright © 2020 T-Mobile Inc. All rights reserved.
//

import Foundation
import XCTest

enum PKUITestAutomationScreen:String {
    
    case enterEmailTextField = "Enter email"
    case passwordTextFields = "Enter password"
    case loginButton = "Login"
    case selectPhoto1 = "Select Photo"
    case enterName = "Enter Name"
    case enterProfession = "Enter Profession"
    case enterAge = "Enter Age"
    case enterBio = "Enter Bio"
    case selectAgeRangeMin = "MIN_SLIDER"
    case selectAgeRangeMax = "MAX_SLIDER"
    
    
    var element: XCUIElement {
        switch self {
        case .enterEmailTextField:
            return XCUIApplication().textFields[self.rawValue]
        case .passwordTextFields:
            return XCUIApplication().secureTextFields[self.rawValue]
        case .loginButton:
            return XCUIApplication().buttons[self.rawValue]
        case .selectPhoto1:
            return XCUIApplication().buttons[self.rawValue]
        case .enterName:
            return XCUIApplication().textFields[self.rawValue]
        case .enterProfession:
            return XCUIApplication().textFields[self.rawValue]
        case.enterAge:
            return XCUIApplication().textFields[self.rawValue]
        case .enterBio:
            return XCUIApplication().textFields[self.rawValue]
        case .selectAgeRangeMin:
            return XCUIApplication().sliders[self.rawValue]
        case .selectAgeRangeMax:
            return XCUIApplication().sliders[self.rawValue]
        }
    }
    
}
