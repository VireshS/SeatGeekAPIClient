//
//  CoreDataService.swift
//  Seat Geek
//
//  Created by Viresh Singh on 28/05/19.
//  Copyright © 2019 Viresh. All rights reserved.
//

import Foundation
import CoreData

//extension FavoriteSportsEvents {
//    @nonobjc public class func fetchRequest() -> NSFetchRequest<FavoriteSportsEvents> {
//        return NSFetchRequest<FavoriteSportsEvents>(entityName: "FavoriteSportsEvents");
//    }
//}

class CoreDataService
{
    private static var defaultInstance:CoreDataService? = nil
    private var persistentContainer: NSPersistentContainer? = nil
    class func defaultService()->CoreDataService
    {
        if(defaultInstance == nil)
        {
            defaultInstance = CoreDataService()
            defaultInstance?.initializeStack()
        }
        return defaultInstance!
    }
    
    ///Mark a Sports event for given 'eventIDToAdd' as favorite
    @discardableResult
    func markFavorite(toEvent eventIDToAdd:String)->CoreDataService {
        if(self.events(forEventID: eventIDToAdd).count > 0)
        {
            //Safety Check:It means particular event is already added as favorite
            return self
        }
        self.add(newEntityWithEventID: eventIDToAdd)
        return self
    }
    
    ///Un-Mark a Sports event for given 'eventIDToAdd' as favorite
    @discardableResult
    func unmarkFavorite(toEvent eventIDToAdd:String) -> CoreDataService {
        self.remove(newEntityWithEventID: eventIDToAdd)
        return self
    }
    
    ///Check if given sports event for given 'eventIDToCheck' is marked as favorite
    @discardableResult
    func doesEntryExist(forEventID eventIDToCheck:String) -> Bool {
        return self.events(forEventID: eventIDToCheck).count>0
    }
    
    private func events(forEventID eventID:String)->[FavoriteSportsEvents]
    {
        if let context = self.persistentContainer?.viewContext
        {
            let fetchRequest:NSFetchRequest<FavoriteSportsEvents> = FavoriteSportsEvents.fetchRequest()
            fetchRequest.predicate = NSPredicate(format: "eventID == %@",eventID.lowercased())
            do{
                return try context.fetch(fetchRequest)
            }
            catch{
                //to be handled
            }
        }
        return [FavoriteSportsEvents]()
    }
    
    private func add(newEntityWithEventID eventID:String)
    {
        if let context = self.persistentContainer?.viewContext
        {
            if let favoriteEntity = NSEntityDescription.insertNewObject(forEntityName: "FavoriteSportsEvents", into: context) as? FavoriteSportsEvents
            {
                favoriteEntity.eventID = eventID.lowercased()
                self.saveContext()
            }
        }
    }
    
    private func remove(newEntityWithEventID eventID:String)
    {
        if let context = self.persistentContainer?.viewContext
        {
            let allEventsForThisID = self.events(forEventID: eventID)
            for event in allEventsForThisID
            {
                context.delete(event)
            }
            self.saveContext()
        }
        
    }
    
    
    func initializeStack()
    {
        self.persistentContainer = NSPersistentContainer(name: "Seat_Geek")
        self.persistentContainer?.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                
                /*
                 Typical reasons for an error here include:
                 * The parent directory does not exist, cannot be created, or disallows writing.
                 * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                 * The device is out of space.
                 * The store could not be migrated to the current model version.
                 Check the error message to determine what the actual problem was.
                 */
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
    }
    
    
    func saveContext () {
        if let context = self.persistentContainer?.viewContext
        {
            if context.hasChanges {
                do {
                    try context.save()
                } catch {
                    // Replace this implementation with code to handle the error appropriately.
                    // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                    let nserror = error as NSError
                    fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
                }
            }
        }
    }
}
