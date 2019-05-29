//
//  ViewController.swift
//  Seat Geek
//
//  Created by Viresh Singh on 28/05/19.
//  Copyright © 2019 Viresh. All rights reserved.
//

import UIKit

class SportsEventDetailsViewController: UIViewController {
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    @IBOutlet weak var eventImageView: UIImageView!
    @IBOutlet weak var eventTimeLabel: UILabel!
    @IBOutlet weak var eventLocationLabel: UILabel!
    var currentSportsEventViewModel:SportsEventViewModel? = nil
    var navigationRightButton = UIBarButtonItem(image: UIImage(named: "UnFavorite"), style: UIBarButtonItem.Style.plain, target: self, action: #selector(onFavorite))
    override func viewDidLoad() {
        super.viewDidLoad()
        //Subscripe for the image downloader notification which willl be broadcasted whenever a image is downloaded
        //So that UI can be refreshed
        NotificationCenter.default.addObserver(self,selector: #selector(self.onImageDownloaded(notification:)),
                                               name: Constants.ImageDownloadCompletionNotificationName,object: nil)
        if let viewModel = self.currentSportsEventViewModel
        {
            self.eventTimeLabel.text = viewModel.eventTime
            self.eventLocationLabel.text = viewModel.eventLocation
        }
        self.title = self.currentSportsEventViewModel?.eventTitle
        self.eventImageView.layer.cornerRadius = 5.0
        self.eventImageView.clipsToBounds = true
        //self.navigationItem.setRightBarButton(self.navigationRightButton, animated: false)
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.updateNavigationButton()
        self.updateImage()
    }
    
    func updateNavigationButton()
    {
        let button = UIButton(type: .custom)
        if(self.currentSportsEventViewModel?.isFavorite() == true)
        {
            button.setImage(UIImage(named: "Favorite"), for: .normal)
        }
        else
        {
            button.setImage(UIImage(named: "UnFavorite"), for: .normal)
        }
        button.addTarget(self, action: #selector(onFavorite), for: .touchUpInside)
        button.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        let barButton = UIBarButtonItem(customView: button)
        barButton.customView?.translatesAutoresizingMaskIntoConstraints = false
        barButton.customView?.heightAnchor.constraint(equalToConstant: 40).isActive = true
        barButton.customView?.widthAnchor.constraint(equalToConstant: 40).isActive = true
        self.navigationRightButton = barButton
        self.navigationItem.rightBarButtonItem = self.navigationRightButton
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        NotificationCenter.default.removeObserver(self)
    }

    @objc func onFavorite()
    {
        if(self.currentSportsEventViewModel?.isFavorite() == true)
        {
            self.currentSportsEventViewModel?.unmarkFavorite()
        }
        else
        {
            self.currentSportsEventViewModel?.markFavorite()
        }
        self.updateNavigationButton()
    }
    
    func updateImage()
    {
        if let viewModel = self.currentSportsEventViewModel
        {
            self.activityIndicator.stopAnimating()
            if let eventImageUrl = viewModel.eventImageUrl
            {
                if let eventImage = SportsEventsDataService.defaultService().image(forSportsEventIMageURL: eventImageUrl)
                {
                    //Image is already downlaoded and cached, refer it back from the view model which can fetch it back from caching service
                    self.eventImageView.image = eventImage
                    self.eventImageView.contentMode = .scaleAspectFit
                }
                else if(SportsEventsDataService.defaultService().isDownloadingImage(forSportsEventImageURL: eventImageUrl))
                {
                    //Image is not yet downloaded but is in progress
                    self.eventImageView?.image = UIImage(named: "Downloading")
                    self.eventImageView.contentMode = .scaleAspectFill
                    self.activityIndicator.startAnimating()
                }
                else
                {
                    //Image neither downloaded, nor in progress, hence no image
                    self.eventImageView?.image = UIImage(named: "NoImage")
                    self.eventImageView.contentMode = .scaleAspectFill
                }
            }
        }
        else
        {
            self.eventImageView?.image = UIImage(named: "NoImage")
        }
    }
    //When there is some image is downloaded
    @objc func onImageDownloaded(notification:Notification)
    {
        //If any image download is finished
        if let userInfo = notification.userInfo
        {
            if let imageKey = userInfo["image_key"] as? String
            {
                if let unwrappedViewModel = self.currentSportsEventViewModel
                {
                    if let eventUrl = unwrappedViewModel.eventImageUrl
                    {
                        let validEventUrl = eventUrl.trim().lowercased()
                        if(validEventUrl == imageKey.lowercased())
                        {
                            //If its the same image for which currently showing the details
                            self.updateImage()
                        }
                    }
                }
            }
        }
    }
}
