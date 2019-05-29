//
//  Seat_GeekTests.swift
//  Seat GeekTests
//
//  Created by Viresh Singh on 28/05/19.
//  Copyright © 2019 Viresh. All rights reserved.
//

import XCTest
@testable import Seat_Geek

class FavoriteConfigurationsStorageTests: XCTestCase {

    func testValidJasonModelParsing() {
        let event = SportsEventViewModel(withEvent: SportsEvent.dummyEvent())
        XCTAssertNotNil(event.eventTitle)
        XCTAssertNotNil(event.eventID)
        XCTAssertNotNil(event.eventImageUrl)
        XCTAssertNotNil(event.eventTime)
        XCTAssertNotNil(event.eventLocation)
    }
    
    func testInValidJasonModelParsing() {
        let event = SportsEventViewModel(withEvent: SportsEvent.dummyEvent())
        XCTAssertFalse(event.isFavorite())
    }
    
    func testMarkingUnmarkingFavorite() {
        let event = SportsEventViewModel(withEvent: SportsEvent.dummyEvent())
        XCTAssertFalse(event.isFavorite())
        event.markFavorite()
        XCTAssertTrue(event.isFavorite())
        event.unmarkFavorite()
        XCTAssertFalse(event.isFavorite())
    }
}
