//
//  UITests_training.swift
//  UITests_01
//
//  Created by bubble on 2018/6/26.
//  Copyright © 2018年 Beijing Calorie Technology Co., Ltd. All rights reserved.
//

import XCTest

class UITests_training: XCTestCase {
        
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
        if app.buttons["Log In"].exists == true {
            let a = UITests_login()
            a.testExample()
            }
        
        app.tabBars/*@START_MENU_TOKEN@*/.buttons["Tab Discuss In Main Page"]/*[[".buttons[\"Workouts\"]",".buttons[\"Tab Discuss In Main Page\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        sleep(2)
        app.tables/*@START_MENU_TOKEN@*/.cells["KEPTrainingExploreWorkoutsCell0"]/*[[".cells[\"Bodyweight Training, 36 Joined, Bodyweight Toning Workout – Beginner, 14 min · K2 Intermediate, 14 Joined, Bodyweight Strength & Cardio Workout – Intermediate, 13 min · K3 Advanced\"]",".cells[\"KEPTrainingExploreWorkoutsCell0\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.images["KEPTrainingExploreCollectionViewCell 0"].tap()
        snapshot("010loginscreenshot", timeWaitingForIdle: 2)
       let collectionViewsQuery = app.collectionViews
       if  collectionViewsQuery/*@START_MENU_TOKEN@*/.tables.buttons["addmylist"]/*[[".cells.tables",".cells",".buttons[\"添加到我的訓練計劃\"]",".buttons[\"addmylist\"]",".tables"],[[[-1,4,1],[-1,0,1]],[[-1,3],[-1,2],[-1,1,2]],[[-1,3],[-1,2]]],[0,0]]@END_MENU_TOKEN@*/.exists == true
       {
        collectionViewsQuery/*@START_MENU_TOKEN@*/.tables.buttons["addmylist"]/*[[".cells.tables",".cells",".buttons[\"添加到我的訓練計劃\"]",".buttons[\"addmylist\"]",".tables"],[[[-1,4,1],[-1,0,1]],[[-1,3],[-1,2],[-1,1,2]],[[-1,3],[-1,2]]],[0,0]]@END_MENU_TOKEN@*/.tap()
        
        }
        snapshot("011loginscreenshot", timeWaitingForIdle: 2)
        sleep(1)
        let buttonStartTrainInJoinedPlanPageButton = app.buttons["Button Start Train In Joined Plan Page"]
        buttonStartTrainInJoinedPlanPageButton.tap()
        snapshot("012loginscreenshot", timeWaitingForIdle: 2)
        sleep(30)
        app.buttons["icon training forward"]/*@START_MENU_TOKEN@*/.press(forDuration: 1.1);/*[[".tap()",".press(forDuration: 1.1);"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        //app.alerts["Keep would like to access your Health data."].buttons["Confirm"].tap()
        if app.buttons["Great!"].exists == true
        {
            app.buttons["Great"].tap()
        }
        sleep(8)
        app/*@START_MENU_TOKEN@*/.buttons["Sure Button"]/*[[".buttons[\"Confirm\"]",".buttons[\"Sure Button\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        snapshot("013loginscreenshot", timeWaitingForIdle: 2)
        app.buttons["icon traininginfo close"].tap()
        snapshot("014loginscreenshot", timeWaitingForIdle: 2)
        XCTAssertEqual(app.tables/*@START_MENU_TOKEN@*/.cells["KEPTrainingExploreWorkoutsCell0"]/*[[".cells[\"Bodyweight Training, 36 Joined, Bodyweight Toning Workout – Beginner, 14 min · K2 Intermediate, 14 Joined, Bodyweight Strength & Cardio Workout – Intermediate, 13 min · K3 Advanced\"]",".cells[\"KEPTrainingExploreWorkoutsCell0\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.images["KEPTrainingExploreCollectionViewCell 0"].exists, true)
        let b = UITests_logout()
            b.testExample()
      
    }
    
}
