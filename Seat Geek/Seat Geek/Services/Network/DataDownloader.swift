//
//  DataDownloader.swift
//  Seat Geek
//
//  Created by Viresh Singh on 28/05/19.
//  Copyright © 2019 Viresh. All rights reserved.
//

import UIKit

@objc class DataDownloader: BaseOperation
{
    typealias sportsEventsListDownloadedBlock = ((_ events:[SportsEvent]?, _ error:ApplicationError?) -> Void)
    typealias imageDownloadedBlock = ((_ eventImage:UIImage?, _ error:ApplicationError?) -> Void)
    private var urlToDownloadData:URL? = nil
    private var isDownloadingSportsEventList = true
    private var sportsEventsListDownloadCompletitonBlock:sportsEventsListDownloadedBlock? = nil
    private var sportEventImageDownloadCompletitonBlock:imageDownloadedBlock? = nil
    static var session = URLSession(configuration: URLSessionConfiguration.default)
    
    override init() {
        super.init()
    }
    
    ///Initialize operation for Image download
    convenience init(withImageUrl url:String, completionBlock:@escaping imageDownloadedBlock)
    {
        self.init()
        self.isDownloadingSportsEventList = false
        if(url.count>0)
        {
            self.urlToDownloadData = URL(string: url)
        }
        self.sportEventImageDownloadCompletitonBlock = completionBlock
    }
    
    
    ///Initialize operation for events List Download
    convenience init(withSportsEventsListUrl url:String, completionBlock:@escaping sportsEventsListDownloadedBlock)
    {
        self.init()
        self.isDownloadingSportsEventList = true
        if(url.count>0)
        {
            self.urlToDownloadData = URL(string: url)
        }
        self.sportsEventsListDownloadCompletitonBlock = completionBlock
    }
    override func main()
    {
        self.isExecuting = true
        self.isFinished = false
        if(self.isCancelled)
        {
            self.isFinished = true
            return
        }
        guard self.urlToDownloadData != nil else {
            self.finishOperation()
            if let notifierBlock = self.sportsEventsListDownloadCompletitonBlock
            {
                //Download url is not correct
                DispatchQueue.main.async {
                    notifierBlock(nil,nil)
                }
                return
            }
            return
        }
        NSLog("Initiating Download for URL: \(self.urlToDownloadData?.absoluteString)")
        let request = NSMutableURLRequest(url: self.urlToDownloadData!)
        
        let task = DataDownloader.session.dataTask(with: request as URLRequest) { (data, response, error) in
            var networkError:ApplicationError?
            if(error != nil)
            {
                //if there is some error
                networkError = ApplicationError.error(with: error!._code)
            }
            else if(data == nil || data!.count<=0)
            {
                //or data is nil
                networkError = ApplicationError.genericError()
            }
            else if let httpStatus = response as? HTTPURLResponse{
                //or http error code is not the success one
                if httpStatus.statusCode != 200  {
                    networkError = ApplicationError.error(with: httpStatus.statusCode)
                }
            }
            if(networkError != nil)
            {
                //If there is some network error, notify client and abort
                if(self.isDownloadingSportsEventList)
                {
                    if let notifierBlock = self.sportsEventsListDownloadCompletitonBlock
                    {
                        DispatchQueue.main.async {
                            notifierBlock(nil,networkError)
                        }
                        self.finishOperation()
                        return
                    }
                }
                else
                {
                    if(data == nil || data!.count<=0)
                    {
                        if let notifierBlock = self.sportEventImageDownloadCompletitonBlock
                        {
                            DispatchQueue.main.async {
                                notifierBlock(nil,networkError)
                            }
                            self.finishOperation()
                            return
                        }
                    }
                }
            }
            if(self.isDownloadingSportsEventList)
            {
                do {
                    if let jsonData = try JSONSerialization.jsonObject(with:data!, options:.allowFragments) as? [String : Any?]
                    {
                        if let sportsEvents = SportsEvent.sportsEvents(withJsonModelData: jsonData)
                        {
                            if let notifierBlock = self.sportsEventsListDownloadCompletitonBlock
                            {
                                DispatchQueue.main.async {
                                    notifierBlock(sportsEvents,nil)
                                }
                                self.finishOperation()
                                return
                            }
                        }
                        else
                        {
                            if let notifierBlock = self.sportsEventsListDownloadCompletitonBlock
                            {
                                DispatchQueue.main.async {
                                    notifierBlock([SportsEvent](),nil)
                                }
                                self.finishOperation()
                                return
                            }
                        }
                    }
                }
                catch{
                    if let notifierBlock = self.sportsEventsListDownloadCompletitonBlock
                    {
                        DispatchQueue.main.async {
                            notifierBlock(nil,ApplicationError.genericError())
                        }
                        self.finishOperation()
                        return
                    }
                }
            }
            else
            {
                var error:ApplicationError? = nil
                var downloadedImage:UIImage? = nil
                if let image = UIImage(data: data!)
                {
                    downloadedImage = image
                }
                else
                {
                    error = ApplicationError.genericError()
                }
                if let notifierBlock = self.sportEventImageDownloadCompletitonBlock
                {
                    DispatchQueue.main.async {
                        notifierBlock(downloadedImage,error)
                    }
                    self.finishOperation()
                    return
                }
            }
        }
        task.resume()
    }
    
    override func cancel()
    {
        if self.isExecuting == true
        {
            self.finishOperation()
        }
        else
        {
            super.cancel()
        }
        NSLog("Download Request is cancelled.")
    }
}
