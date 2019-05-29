//
//  SportsEventsDataService
//  Seat Geek
//
//  Created by Viresh Singh on 28/05/19.
//  Copyright © 2019 Viresh. All rights reserved.
//

import Foundation
import UIKit
class SportsEventsDataService
{
    var imageDownloadInProgress:Set<String> = Set<String>()
    static var sharedInstance:SportsEventsDataService? = nil
    class func defaultService() -> SportsEventsDataService
    {
        if(SportsEventsDataService.sharedInstance == nil)
        {
            SportsEventsDataService.sharedInstance = SportsEventsDataService()
            //Max operation allowed are 5 -> 1 for downloading events list and another 4 for downloading images
            NetworkOperationsQueue.defaultQueue().setMaximumAllowedOperations(maximumOperations: 5)
        }
        return SportsEventsDataService.sharedInstance!
    }
    
    /// Download all the events list
    func requestSportsEventsList(withQuery queryParam:String, withCompletionBlock:@escaping DataDownloader.sportsEventsListDownloadedBlock)
    {
        //Cancel any current outstanding operation which is downloading sports events list for previous query
        NetworkOperationsQueue.defaultQueue().cancelAllOperations()
        
        //create downloader operation
        let sportsEventListDownloadingOperation = DataDownloader(withSportsEventsListUrl: Constants.sportsEventsListDownloadURL(withQueryParam: queryParam)) { (sportEvents, error) in
            withCompletionBlock(sportEvents,error)
        }
        //add it to opeartion queue to download
        NetworkOperationsQueue.defaultQueue().addOperation(operation: sportsEventListDownloadingOperation, withPriority: .Immediate)
    }
    
    ///Returns the image for given event from Image Cache. If not available in caches, queues the request for download
    func image(forSportsEventIMageURL sportEventImgURL:String, requiresOnPriority:Bool = false) -> UIImage?
    {
        //Check if event URL is there
        if(sportEventImgURL.trim().count > 0)
        {
            let validUrlString = sportEventImgURL.trim()
            let validURL = URL(string: validUrlString)
            if(validURL?.scheme == nil || validURL?.host == nil)
            {
                //Its not a valid URL to download
                return nil
            }
            //Check if this image is already downloaded and is available in cache
            //Use case could be when same image is used for multiple sports event
            //Then it can avoid downloading the same image again
            if let existingCachedImage = ImageCache.image(forKey: validUrlString)
            {
                //If so, just return it
                return existingCachedImage
            }
            else
            {
                //Image was not found in cache
                self.downloadAndCacheImage(for: validUrlString, withPriority: requiresOnPriority ? ImageDownloadingPriority.Immediate : ImageDownloadingPriority.Default)
            }
        }
        return nil
    }
    
    private func downloadAndCacheImage(for imageUrl:String, withPriority:ImageDownloadingPriority)
    {
        //As this image is not there in cache, lets download it
        if(self.imageDownloadInProgress.contains(imageUrl.lowercased()))
        {
            //Image download is already in progress
            return
        }
        self.imageDownloadInProgress.insert(imageUrl.lowercased())
        //Invoke Image download operation
        let imageDownloadOperation = DataDownloader(withImageUrl: imageUrl) { (image, error) in
            if let unwrappedImage = image
            {
                //Successfully downloaded. lets cache it for further requests
                ImageCache.cache(image: unwrappedImage, forKey: imageUrl)
            }
            else
            {
                //Failed to download Image
            }
            //whether its successfull or failed, update the progress and notify the observers
            self.imageDownloadInProgress.remove(imageUrl.lowercased())
            let userData = ["image_key":imageUrl]
            NotificationCenter.default.post(name: Constants.ImageDownloadCompletionNotificationName, object: nil, userInfo: userData)
        }
        //add it to queue
        NetworkOperationsQueue.defaultQueue().addOperation(operation: imageDownloadOperation, withPriority: withPriority)
    }
    
    func isDownloadingImage(forSportsEventImageURL sportsEventImgUrl:String)->Bool
    {
        //Check if event URL is there
        if (sportsEventImgUrl.trim().count > 0)
        {
            let validUrl = sportsEventImgUrl.trim().lowercased()
            return self.imageDownloadInProgress.contains(validUrl)
        }
        return false
    }
    
    ///Cleans up local data structs
    func cleanup() {
        self.imageDownloadInProgress.removeAll()
        ImageCache.discardCache()
        NetworkOperationsQueue.defaultQueue().cancelAllOperations()
    }
    
    func cancelNetworkOperations() {
        self.imageDownloadInProgress.removeAll()
        NetworkOperationsQueue.defaultQueue().cancelAllOperations()
    }
}
