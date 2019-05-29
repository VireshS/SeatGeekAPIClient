//
//  SportsEvent.swift
//  Seat Geek
//
//  Created by Viresh Singh on 28/05/19.
//  Copyright © 2019 Viresh. All rights reserved.
//

import Foundation
import UIKit

class SportsEventViewModel
{
    init(withEvent:SportsEvent) {
        self.model = withEvent
    }
    private var model:SportsEvent? = nil
    
    var eventImageUrl:String?
    {
        get
        {
            return self.model?.eventImageURL
        }
    }
    
    var eventTitle:String
    {
        get
        {
            return self.model?.eventTitle ?? "Not Available"
        }
    }
    var eventLocation:String
    {
        get
        {
            return self.model?.eventLocation ?? "Not Available"
        }
    }
    var eventTime:String
    {
        get
        {
            return self.model?.eventTime?.toString(withDateFormat: "EEE, dd MMM yyy hh:mm a") ?? "Not Available"
        }
    }
    var eventImage:UIImage?
    {
        get
        {
            return self.model != nil ? SportsEventsDataService.defaultService().image(forSportsEventIMageURL: self.model!.eventImageURL) : nil
        }
    }
    var eventID:String
    {
        get
        {
            return self.model?.eventID ?? UUID().uuidString
        }
    }
    
    func isFavorite() -> Bool {
        return CoreDataService.defaultService().doesEntryExist(forEventID: self.eventID)
    }
    
    func markFavorite()  {
        CoreDataService.defaultService().markFavorite(toEvent: self.eventID)
    }
    
    func unmarkFavorite()  {
        CoreDataService.defaultService().unmarkFavorite(toEvent: self.eventID)
    }
    
    
}
