//
//  PKUISteps.swift
//  PKUITests
//
//  Created by YoursRavindra on 10/29/20.
//  Copyright © 2020 T-Mobile Inc. All rights reserved.
//

import Foundation
import XCTest

extension PKUITestBase {
    
    func givenAppIsReady() {
        XCTContext.runActivity(named: "Given App is Ready") { _ in
            XCTAssertTrue(XCUIApplication().staticTexts["Login"].exists)
        }
    }
    
    func whenIEnterEmail() {
        XCTContext.runActivity(named: "When I enter email") { _ in
            PKUITestAutomationScreen.enterEmailTextField.element.tap()
            PKUITestAutomationScreen.enterEmailTextField.element.typeText("rp123@gmail.com")
        }
    }
    
    func whenIEnterPassword() {
        XCTContext.runActivity(named: "When I enter password") { _ in
            PKUITestAutomationScreen.passwordTextFields.element.tap()
            PKUITestAutomationScreen.passwordTextFields.element
                .typeText("temppass")
        }
    }
    
    func thenIshouldLoginonTapLogin(){
        XCTContext.runActivity(named: "then I tap on Login button") { _ in
            PKUITestAutomationScreen.loginButton.element.tap()
        }
    }
    func andISelectedPhotoOne() {
        XCTContext.runActivity(named: "and I tap on Select Photo button and selected photos") { _ in
            _ = app.tables
            let selectPhotoElementsQuery = app.tables.otherElements.containing(.button, identifier:"Select Photo")
            selectPhotoElementsQuery.children(matching: .button).matching(identifier: "Select Photo").element(boundBy: 0).tap()
            let elementsQuery = app.scrollViews.otherElements
            elementsQuery.images["Photo, March 30, 2018, 2:14 PM"].tap()
            selectPhotoElementsQuery.children(matching: .button).matching(identifier: "Select Photo").element(boundBy: 1).tap()
            
            elementsQuery.images["Photo, August 08, 2012, 4:55 PM"].tap()
            selectPhotoElementsQuery.children(matching: .button).matching(identifier: "Select Photo").element(boundBy: 2).tap()
            elementsQuery.images["Photo, August 08, 2012, 4:29 PM"].tap()
        }
    }

    func thenIEnterNameOnProfilePage() {
        XCTContext.runActivity(named: "then I enter name") { _ in
            let tablesQuery = XCUIApplication().tables
            tablesQuery/*@START_MENU_TOKEN@*/.textFields["Enter Name"]/*[[".cells.textFields[\"Enter Name\"]",".textFields[\"Enter Name\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
            tablesQuery/*@START_MENU_TOKEN@*/.textFields["Enter Name"]/*[[".cells.textFields[\"Enter Name\"]",".textFields[\"Enter Name\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.typeText("Ravi")
        }
    }

    func andIEnterProfession() {
        XCTContext.runActivity(named: "and I enter profession") { _ in
            let enterProfessionTextField = XCUIApplication()/*@START_MENU_TOKEN@*/.textFields["Enter Profession"]/*[[".cells.textFields[\"Enter Profession\"]",".textFields[\"Enter Profession\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
            enterProfessionTextField.tap()
            enterProfessionTextField.typeText("Software Development Engineer in Test")
        }
    }
    
    func thenIEnterAge() {
        XCTContext.runActivity(named: "then I enter age") { _ in
            let enterAgeTextField = XCUIApplication()/*@START_MENU_TOKEN@*/.textFields["Enter Age"]/*[[".cells.textFields[\"Enter Age\"]",".textFields[\"Enter Age\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
            enterAgeTextField.tap()
            enterAgeTextField.typeText("30")
        }
    }
    
    func andIEnterBio() {
        XCTContext.runActivity(named: "and I enter bio") { _ in
            let enterBioTextField = XCUIApplication()/*@START_MENU_TOKEN@*/.textFields["Enter Bio"]/*[[".cells.textFields[\"Enter Bio\"]",".textFields[\"Enter Bio\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
            enterBioTextField.tap()
            enterBioTextField.typeText("Working as a SDET from last 6 years")
        }
    }
    
    func thenISelectAgeRange() {
        XCTContext.runActivity(named: "then I enter bio") { _ in
            XCUIApplication().sliders["MIN_SLIDER"].press(forDuration: 1.5);
            XCUIApplication().sliders["MIN_SLIDER"].adjust(toNormalizedSliderPosition: 0.1)
            XCUIApplication()/*@START_MENU_TOKEN@*/.sliders["MAX_SLIDER"]/*[[".cells.sliders[\"MAX_SLIDER\"]",".sliders[\"MAX_SLIDER\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.adjust(toNormalizedSliderPosition: 0.3)
        }
    }
    
    func andIshouldSaveProfile() {
        XCTContext.runActivity(named: "and I should see success!!!") { _ in
            XCUIApplication().navigationBars["Settings"].buttons["Save"].tap()
            XCTAssertTrue(XCUIApplication().staticTexts["Success!!!"].exists)
            //XCUIApplication().staticTexts["Success!!!"].tap()
        }
    }
}
