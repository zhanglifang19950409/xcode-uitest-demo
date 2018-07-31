//
//  UITests_login.swift
//  UITests_01
//
//  Created by bubble on 2018/6/26.
//  Copyright © 2018年 Beijing Calorie Technology Co., Ltd. All rights reserved.
//

import XCTest

class UITests_login: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        
        let app = XCUIApplication()
        app.buttons["Log In"].tap()
        snapshot("01loginscreenshot", timeWaitingForIdle: 2)
        app/*@START_MENU_TOKEN@*/.textFields["email account"]/*[[".textFields[\"Email Address\"]",".textFields[\"email account\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.textFields["email account"].typeText("zhanglifang@gotokeep.com")
        app/*@START_MENU_TOKEN@*/.secureTextFields["password"]/*[[".secureTextFields[\"Password\"]",".secureTextFields[\"password\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.secureTextFields["password"].typeText("15652016996")
        app/*@START_MENU_TOKEN@*/.buttons["Log in"]/*[[".buttons[\"Log In\"]",".buttons[\"Log in\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        sleep(4)
       // snapshot("01loginscreenshot")
        snapshot("02loginscreenshot", timeWaitingForIdle: 2)
        if app.buttons["Allow notifications"].exists == true
        {
            app.buttons["Allow notifications"].tap()
        }
        XCTAssertEqual(XCUIApplication().tabBars/*@START_MENU_TOKEN@*/.buttons["Tab Train In Main Page"]/*[[".buttons[\"Home\"]",".buttons[\"Tab Train In Main Page\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.exists,true)
      
     
    }
    
}
