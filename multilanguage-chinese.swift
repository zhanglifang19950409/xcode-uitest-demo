//
//  multilanguage-chinese.swift
//  UITests_01
//
//  Created by bubble on 2018/6/27.
//  Copyright © 2018年 Beijing Calorie Technology Co., Ltd. All rights reserved.
//

import XCTest

class multilanguage_chinese: XCTestCase {
        
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
    
    func testExample_chinese() {
        let app = XCUIApplication()
        if app.buttons["Log In"].exists == true {
            let a = UITests_login()
            a.testExample()
        }
       // let tabBarsQuery = app.tabBars
        app.tabBars/*@START_MENU_TOKEN@*/.buttons["Tab Personal In Main Page"]/*[[".buttons[\"我\"]",".buttons[\"Tab Personal In Main Page\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        snapshot("015loginscreenshot", timeWaitingForIdle: 2)
        let tablesQuery = app.tables
        tablesQuery.element.swipeUp()
        let metabrow7Element = tablesQuery/*@START_MENU_TOKEN@*/.otherElements["meTabRow:7"]/*[[".cells.otherElements[\"meTabRow:7\"]",".otherElements[\"meTabRow:7\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        metabrow7Element.tap()
        snapshot("016loginscreenshot", timeWaitingForIdle: 2)
        let settingsection0Settingrow5Element = tablesQuery/*@START_MENU_TOKEN@*/.otherElements["settingSection:0, settingRow:5"]/*[[".cells.otherElements[\"settingSection:0, settingRow:5\"]",".otherElements[\"settingSection:0, settingRow:5\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        settingsection0Settingrow5Element.tap()
        let staticText = tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["中文简体"]/*[[".cells.staticTexts[\"中文简体\"]",".staticTexts[\"中文简体\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        staticText.tap()
        app.navigationBars["languageNaviBar"]/*@START_MENU_TOKEN@*/.buttons["Language Done"]/*[[".buttons[\"Done\"]",".buttons[\"Language Done\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        snapshot("017loginscreenshot", timeWaitingForIdle: 2)
        
        let train = UITests_training()
        train.testExample()
   
    }
    
    func test_traditional() {
        let app = XCUIApplication()
        if app.buttons["Log In"].exists == true {
            let a = UITests_login()
            a.testExample()
        }
        // let tabBarsQuery = app.tabBars
        app.tabBars/*@START_MENU_TOKEN@*/.buttons["Tab Personal In Main Page"]/*[[".buttons[\"我\"]",".buttons[\"Tab Personal In Main Page\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        snapshot("018loginscreenshot", timeWaitingForIdle: 2)
        let tablesQuery = app.tables
        tablesQuery.element.swipeUp()
        let metabrow7Element = tablesQuery/*@START_MENU_TOKEN@*/.otherElements["meTabRow:7"]/*[[".cells.otherElements[\"meTabRow:7\"]",".otherElements[\"meTabRow:7\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        metabrow7Element.tap()
        snapshot("019loginscreenshot", timeWaitingForIdle: 2)
        let settingsection0Settingrow5Element = tablesQuery/*@START_MENU_TOKEN@*/.otherElements["settingSection:0, settingRow:5"]/*[[".cells.otherElements[\"settingSection:0, settingRow:5\"]",".otherElements[\"settingSection:0, settingRow:5\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        settingsection0Settingrow5Element.tap()
        let staticText =  tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["中文繁體"]/*[[".cells.staticTexts[\"中文繁體\"]",".staticTexts[\"中文繁體\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        staticText.tap()
        app.navigationBars["languageNaviBar"]/*@START_MENU_TOKEN@*/.buttons["Language Done"]/*[[".buttons[\"Done\"]",".buttons[\"Language Done\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        snapshot("020loginscreenshot", timeWaitingForIdle: 2)
        
        let train = UITests_training()
        train.testExample()
        
        
   /*     let app = XCUIApplication()
        app.tabBars/*@START_MENU_TOKEN@*/.buttons["Tab Personal In Main Page"]/*[[".buttons[\"我\"]",".buttons[\"Tab Personal In Main Page\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let tablesQuery = app.tables
        tablesQuery/*@START_MENU_TOKEN@*/.otherElements["meTabRow:7"]/*[[".cells.otherElements[\"meTabRow:7\"]",".otherElements[\"meTabRow:7\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.otherElements["settingSection:0, settingRow:5"]/*[[".cells.otherElements[\"settingSection:0, settingRow:5\"]",".otherElements[\"settingSection:0, settingRow:5\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["中文繁體"]/*[[".cells.staticTexts[\"中文繁體\"]",".staticTexts[\"中文繁體\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["日本語"]/*[[".cells.staticTexts[\"日本語\"]",".staticTexts[\"日本語\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["한국어"]/*[[".cells.staticTexts[\"한국어\"]",".staticTexts[\"한국어\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Español"]/*[[".cells.staticTexts[\"Español\"]",".staticTexts[\"Español\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["ประเทศไทย"]/*[[".cells.staticTexts[\"ประเทศไทย\"]",".staticTexts[\"ประเทศไทย\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["français"]/*[[".cells.staticTexts[\"français\"]",".staticTexts[\"français\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Deutsche"]/*[[".cells.staticTexts[\"Deutsche\"]",".staticTexts[\"Deutsche\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["हिंदी"]/*[[".cells.staticTexts[\"हिंदी\"]",".staticTexts[\"हिंदी\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Português"]/*[[".cells.staticTexts[\"Português\"]",".staticTexts[\"Português\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["русский"]/*[[".cells.staticTexts[\"русский\"]",".staticTexts[\"русский\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["italiano"]/*[[".cells.staticTexts[\"italiano\"]",".staticTexts[\"italiano\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Indonesian"]/*[[".cells.staticTexts[\"Indonesian\"]",".staticTexts[\"Indonesian\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.navigationBars["languageNaviBar"]/*@START_MENU_TOKEN@*/.buttons["Language Done"]/*[[".buttons[\"完成\"]",".buttons[\"Language Done\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
      */
    }
    
    func test_japanese() {
        let app = XCUIApplication()
        if app.buttons["Log In"].exists == true {
            let a = UITests_login()
            a.testExample()
        }
        // let tabBarsQuery = app.tabBars
        app.tabBars/*@START_MENU_TOKEN@*/.buttons["Tab Personal In Main Page"]/*[[".buttons[\"我\"]",".buttons[\"Tab Personal In Main Page\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        snapshot("021loginscreenshot", timeWaitingForIdle: 2)
        let tablesQuery = app.tables
        tablesQuery.element.swipeUp()
        let metabrow7Element = tablesQuery/*@START_MENU_TOKEN@*/.otherElements["meTabRow:7"]/*[[".cells.otherElements[\"meTabRow:7\"]",".otherElements[\"meTabRow:7\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        metabrow7Element.tap()
        let settingsection0Settingrow5Element = tablesQuery/*@START_MENU_TOKEN@*/.otherElements["settingSection:0, settingRow:5"]/*[[".cells.otherElements[\"settingSection:0, settingRow:5\"]",".otherElements[\"settingSection:0, settingRow:5\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        settingsection0Settingrow5Element.tap()
        snapshot("022loginscreenshot", timeWaitingForIdle: 2)
        let staticText = tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["日本語"]/*[[".cells.staticTexts[\"日本語\"]",".staticTexts[\"日本語\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        staticText.tap()
        app.navigationBars["languageNaviBar"]/*@START_MENU_TOKEN@*/.buttons["Language Done"]/*[[".buttons[\"Done\"]",".buttons[\"Language Done\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        snapshot("023loginscreenshot", timeWaitingForIdle: 2)
        let train = UITests_training()
        train.testExample()
        
    }
    
    func test_korea() {
        let app = XCUIApplication()
        if app.buttons["Log In"].exists == true {
            let a = UITests_login()
            a.testExample()
        }
        // let tabBarsQuery = app.tabBars
        app.tabBars/*@START_MENU_TOKEN@*/.buttons["Tab Personal In Main Page"]/*[[".buttons[\"我\"]",".buttons[\"Tab Personal In Main Page\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        snapshot("024loginscreenshot", timeWaitingForIdle: 2)
        let tablesQuery = app.tables
        tablesQuery.element.swipeUp()
        let metabrow7Element = tablesQuery/*@START_MENU_TOKEN@*/.otherElements["meTabRow:7"]/*[[".cells.otherElements[\"meTabRow:7\"]",".otherElements[\"meTabRow:7\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        metabrow7Element.tap()
        let settingsection0Settingrow5Element = tablesQuery/*@START_MENU_TOKEN@*/.otherElements["settingSection:0, settingRow:5"]/*[[".cells.otherElements[\"settingSection:0, settingRow:5\"]",".otherElements[\"settingSection:0, settingRow:5\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        settingsection0Settingrow5Element.tap()
        snapshot("025loginscreenshot", timeWaitingForIdle: 2)
        let staticText = tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["한국어"]/*[[".cells.staticTexts[\"한국어\"]",".staticTexts[\"한국어\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        staticText.tap()
        app.navigationBars["languageNaviBar"]/*@START_MENU_TOKEN@*/.buttons["Language Done"]/*[[".buttons[\"Done\"]",".buttons[\"Language Done\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        snapshot("026loginscreenshot", timeWaitingForIdle: 2)
        let train = UITests_training()
        train.testExample()
        
    }
    
    func test_English() {
        let app = XCUIApplication()
        if app.buttons["Log In"].exists == true {
            let a = UITests_login()
            a.testExample()
        }
        // let tabBarsQuery = app.tabBars
        app.tabBars/*@START_MENU_TOKEN@*/.buttons["Tab Personal In Main Page"]/*[[".buttons[\"我\"]",".buttons[\"Tab Personal In Main Page\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        snapshot("027loginscreenshot", timeWaitingForIdle: 2)
        let tablesQuery = app.tables
        tablesQuery.element.swipeUp()
        let metabrow7Element = tablesQuery/*@START_MENU_TOKEN@*/.otherElements["meTabRow:7"]/*[[".cells.otherElements[\"meTabRow:7\"]",".otherElements[\"meTabRow:7\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        metabrow7Element.tap()
        let settingsection0Settingrow5Element = tablesQuery/*@START_MENU_TOKEN@*/.otherElements["settingSection:0, settingRow:5"]/*[[".cells.otherElements[\"settingSection:0, settingRow:5\"]",".otherElements[\"settingSection:0, settingRow:5\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        settingsection0Settingrow5Element.tap()
        snapshot("028loginscreenshot", timeWaitingForIdle: 2)
        let staticText = tablesQuery.staticTexts["English"]
        staticText.tap()
        app.navigationBars["languageNaviBar"]/*@START_MENU_TOKEN@*/.buttons["Language Done"]/*[[".buttons[\"Done\"]",".buttons[\"Language Done\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        snapshot("029loginscreenshot", timeWaitingForIdle: 2)
        let train = UITests_training()
        train.testExample()
        
    }
    
}
