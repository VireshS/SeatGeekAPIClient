//
//  Constants.swift
//  ImageLoader
//
//  Created by Viresh Singh on 06/02/19.
//  Copyright © 2019 Viresh Singh. All rights reserved.
//

import UIKit

struct Constants {
    static let ImageDownloadCompletionNotificationName = Notification.Name(rawValue: "com.demo.seatgeek.imagedownloadcompleted")
    private static let SeatGeekAPIClientKey = "MTY4MDEwMjB8MTU1OTAyMjQ1Ny4zOQ"
    private static let seatGeekAPIUrl = "https://api.seatgeek.com/2/events?client_id=\(Constants.SeatGeekAPIClientKey)"
    static func sportsEventsListDownloadURL(withQueryParam queryParam:String)->String
    {
        return Constants.seatGeekAPIUrl + "&q=" + queryParam
    }
}
