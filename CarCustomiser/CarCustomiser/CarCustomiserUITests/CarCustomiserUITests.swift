//
//  CarCustomiserUITests.swift
//  CarCustomiserUITests
//
//  Created by Goad, William (PAH) on 11/01/2020.
//  Copyr/Users/goad.w/Documents/swift-apps/CarCustomiser/CarCustomiser/CarCustomiserUITestsight © 2020 Goad, William (PAH). All rights reserved.
//

import XCTest

class CarCustomiserUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testWhenBoughtExhaustAndTyresPackagesEcuAndDriveTrainPackagesAreDisabled() {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        //act
        app.switches["tyresSwitch"].tap()
        app.switches["engineSwitch"].tap()
        
        //assert
        XCTAssertEqual(app.switches["electricSwitch"].isEnabled, false)
        XCTAssertEqual(app.switches["washSwitch"].isEnabled, false)
    }
    
//    func testStatsDisplayedOnLaunch() {
//        // UI tests must launch the application that they test.
//        let app = XCUIApplication()
//        app.launch()
//
//        //assert
//        XCTAssertEqual(app.staticTexts["carStats"].textViews, """
//        Make: Volkswagen
//        Model: Golf GTI
//        Top Speed: 135
//        Acceleration: 8.1
//        Handling: 4
//        """)
//
//    }
    
//    func testButtonsAreReenabledAndSetToOffWhenCycleToNextCar() {
//        // UI tests must launch the application that they test.
//        let app = XCUIApplication()
//        app.launch()
//
//        //act
//        app.buttons["cycleCarsButton"].tap()
//
//        //assert
//        XCTAssertEqual(app.switches["engineSwitch"].isEnabled, true)
//        XCTAssertEqual(app.switches["tyresSwitch"].isEnabled, true)
//        XCTAssertEqual(app.switches["electricSwitch"].isEnabled, true)
//        XCTAssertEqual(app.switches["washSwitch"].isEnabled, true)
//
//    }
    
//    func testRemainingFundsDecreasesByFiveHundredWhenEngineAndExhaustPackagePurchased() {
//        // UI tests must launch the application that they test.
//        let app = XCUIApplication()
//        app.launch()
//        
//        //act
//        app.switches["engineSwitch"].tap()
//        
//        //assert
//        XCTAssertEqual(app.switches["electricSwitch"].isEnabled, false)
//        XCTAssertEqual(app.switches["washSwitch"].isEnabled, false)
//    }
    
    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
