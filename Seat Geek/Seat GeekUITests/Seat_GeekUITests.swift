//
//  Seat_GeekUITests.swift
//  Seat GeekUITests
//
//  Created by Viresh Singh on 28/05/19.
//  Copyright © 2019 Viresh. All rights reserved.
//

import XCTest

class Seat_GeekUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testUIPopulation() {
        
        let app = XCUIApplication()
        let searchField = app.searchFields["Search Events (Min 3 chars)"]
        
        let exists = NSPredicate(format: "exists == 1")
        expectation(for: exists, evaluatedWith: searchField, handler: nil)
        waitForExpectations(timeout: 5, handler: nil)
    }

    
    func testFetchingAndDetailsNavigationTableView() {
        
        let app = XCUIApplication()
        
        let searchEventsMin3CharsSearchField = app.searchFields["Search Events (Min 3 chars)"]
        searchEventsMin3CharsSearchField.tap()
        searchEventsMin3CharsSearchField.typeText("Golden")
        
        let tableView = app.tables["EventsTableView"]
        let exists = NSPredicate(format: "cells.count >= 2")
        expectation(for: exists, evaluatedWith: tableView, handler: nil)
        //wait for table view to load
        waitForExpectations(timeout: 30, handler: nil)
        //check if atleast 10 cells are present
        XCTAssertTrue(tableView.cells.count >= 10)
        let cellQuery = tableView.cells.containing(.staticText, identifier: "Golden Ticket")
        let cell = cellQuery.children(matching: .staticText)
        //Verify if cell exist
        XCTAssertTrue(cell.firstMatch.exists)
        //Tap on the cell
        cell.firstMatch.tap()
    }
}
