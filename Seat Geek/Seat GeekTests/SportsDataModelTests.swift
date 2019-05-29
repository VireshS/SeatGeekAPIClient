//
//  Seat_GeekTests.swift
//  Seat GeekTests
//
//  Created by Viresh Singh on 28/05/19.
//  Copyright © 2019 Viresh. All rights reserved.
//

import XCTest
@testable import Seat_Geek
extension SportsEvent
{
    class func dummyEvent()->SportsEvent
    {
        let event = SportsEvent()
        event.eventID = UUID().uuidString
        event.eventLocation = "Bangalore"
        event.eventTime = Date()
        event.eventImageURL = "some url string"
        event.eventTitle = "IPL Finale 2019"
        return event
    }
}
class Seat_GeekTests: XCTestCase
{
    func testEmptyJsonParsing() {
        let event = SportsEvent.sportsEvents(withData: TestData.emptyJson)
        XCTAssertNil(event)
    }
    
    func testInvalidJsonParsing() {
        let event = SportsEvent.sportsEvents(withData: TestData.invalidJson)
        XCTAssertNil(event)
    }
    
    func testValidJsonParsing() {
        let events = SportsEvent.sportsEvents(withData: TestData.validJson)
        XCTAssertNotNil(events)
        XCTAssertTrue(events?.count == 10)
        var iteration = 0
        for event in events! {
            print("Iteration: \(iteration)")
            iteration = iteration + 1
            XCTAssertNotNil(event.eventLocation)
            XCTAssertNotNil(event.eventImageURL)
            XCTAssertNotNil(event.eventTime)
            XCTAssertNotNil(event.eventTitle)
            XCTAssertNotNil(event.eventID)
        }
    }
}
