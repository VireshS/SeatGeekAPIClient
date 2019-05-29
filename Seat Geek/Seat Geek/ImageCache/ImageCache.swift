//
//  ImageCache.swift
//  Seat Geek
//
//  Created by Viresh Singh on 28/05/19.
//  Copyright © 2019 Viresh. All rights reserved.
//

import UIKit
import Foundation

class ImageCache {

    //As of now this app caches the images in memory which can be later modified to cache them on disk persistently using CoreData or Document Directory
    static let defaultCache:NSCache<AnyObject,AnyObject> = NSCache<AnyObject,AnyObject>()
    
    ///cache the provided image
    class func cache(image imageToCache:UIImage, forKey key:String)
    {
        ImageCache.defaultCache.setObject(imageToCache, forKey: key.lowercased() as AnyObject)
    }
    
    ///Returns the cached image for given key
    class func image(forKey imageKey:String)->UIImage?
    {
        if let cachedImage = ImageCache.defaultCache.object(forKey: imageKey.lowercased() as AnyObject)
        {
            return cachedImage as? UIImage
        }
        return nil
    }
    
    ///clears the cache
    class func discardCache()
    {
        ImageCache.defaultCache.removeAllObjects()
    }
}
