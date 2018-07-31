//
//  UITests_logout.swift
//  UITests_01
//
//  Created by bubble on 2018/6/26.
//  Copyright © 2018年 Beijing Calorie Technology Co., Ltd. All rights reserved.
//

import XCTest
class UITests_logout: XCTestCase {
        
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
        snapshot("03loginscreenshot", timeWaitingForIdle: 2)
        if app.buttons["Log In"].exists == true
        {
            let login = UITests_login()
            login.testExample()
        }
        sleep(2)
        snapshot("04loginscreenshot", timeWaitingForIdle: 2)
        app.tabBars/*@START_MENU_TOKEN@*/.buttons["Tab Personal In Main Page"]/*[[".buttons[\"Me\"]",".buttons[\"Tab Personal In Main Page\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        snapshot("05loginscreenshot", timeWaitingForIdle: 2)
        let tablesQuery = app.tables
        tablesQuery.element.swipeUp()
        snapshot("06loginscreenshot", timeWaitingForIdle: 2)
        tablesQuery/*@START_MENU_TOKEN@*/.otherElements["meTabRow:7"]/*[[".cells.otherElements[\"meTabRow:7\"]",".otherElements[\"meTabRow:7\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        snapshot("07loginscreenshot", timeWaitingForIdle: 2)
        tablesQuery/*@START_MENU_TOKEN@*/.otherElements["settingSection:0, settingRow:1"]/*[[".cells.otherElements[\"settingSection:0, settingRow:1\"]",".otherElements[\"settingSection:0, settingRow:1\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        snapshot("08loginscreenshot", timeWaitingForIdle: 2)
        app.buttons["Log out"].tap()
        snapshot("09loginscreenshot", timeWaitingForIdle: 2)
        XCTAssertEqual(app.buttons["Log In"].exists, true)
        
    }
    
}
