//
//  FavoriteSportsEvents+CoreDataProperties.swift
//  Seat Geek
//
//  Created by Viresh Singh on 28/05/19.
//  Copyright © 2019 Viresh. All rights reserved.
//
//

import Foundation
import CoreData


extension FavoriteSportsEvents {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<FavoriteSportsEvents> {
        return NSFetchRequest<FavoriteSportsEvents>(entityName: "FavoriteSportsEvents")
    }

    @NSManaged public var eventID: String?

}
