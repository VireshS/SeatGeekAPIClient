//
//  SportsEventsListController.swift
//  Seat Geek
//
//  Created by Viresh Singh on 28/05/19.
//  Copyright © 2019 Viresh. All rights reserved.
//

import UIKit

class SportsEventsListController: UIViewController {
    @IBOutlet weak var eventsListTableView: UITableView!
    var dataSource = [SportsEventViewModel]()
    let searchController = UISearchController(searchResultsController: nil)
    var isSearchInProgress = false
    var errorMessage = ""
    var queryParam = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        self.eventsListTableView.accessibilityIdentifier = "EventsTableView"
        self.searchController.searchResultsUpdater = self
        self.searchController.obscuresBackgroundDuringPresentation = false
        self.searchController.searchBar.placeholder = "Search Events (Min 3 chars)"
        navigationItem.searchController = searchController
        self.definesPresentationContext = true
        self.eventsListTableView.dataSource = self
        self.eventsListTableView.delegate = self
        self.title = ""
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //Subscripe for the image downloader notification which willl be broadcasted whenever a image is downloaded
        //So that UI can be refreshed
        NotificationCenter.default.addObserver(self,selector: #selector(self.onImageDownloaded(notification:)),
                                               name: Constants.ImageDownloadCompletionNotificationName,object: nil)
        self.navigationItem.hidesSearchBarWhenScrolling = false
        self.eventsListTableView.reloadData()
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        //NotificationCenter.default.removeObserver(self)
    }
    func searchEvents(forQuery query:String)
    {
        self.isSearchInProgress = true
        self.queryParam = self.queryString()
        SportsEventsDataService.defaultService().requestSportsEventsList(withQuery: query) {[weak self] (sportsEvents, error) in
            if let strongSelf = self
            {
                strongSelf.errorMessage = ""
                strongSelf.isSearchInProgress = false
                //strongSelf.refreshControl.endRefreshing()
                if(error != nil)
                {
                    strongSelf.errorMessage =  error!.displayableErrorMessage()
                }
                else if(sportsEvents != nil && sportsEvents!.count > 0)
                {
                    strongSelf.dataSource.removeAll()
                    for sportsEventModel in sportsEvents!
                    {
                        let viewModel = SportsEventViewModel(withEvent: sportsEventModel)
                        strongSelf.dataSource.append(viewModel)
                    }
                }
                else if(sportsEvents?.count == 0)
                {
                    strongSelf.dataSource.removeAll()
                    strongSelf.errorMessage = "No Events."
                }
                strongSelf.eventsListTableView.reloadData()
            }
        }
    }
    
    @objc func onImageDownloaded(notification:Notification)
    {
        //If any image download is finished
        if let userInfo = notification.userInfo
        {
            if let imageKey = userInfo["image_key"] as? String
            {
                if let visibleCell = self.eventsListTableView.visibleCells as? [SearchItemTableCell]
                {
                    //Check if event for same image is currently visible
                    for cell in visibleCell
                    {
                        if let eventImageUrlKey = cell.currentSport?.eventImageUrl?.trim().lowercased()
                        {
                            if(eventImageUrlKey == imageKey.lowercased())
                            {
                                //If visible, reload the cell and now image will be updated directly from the ImageCache
                                if let validPath = self.eventsListTableView.indexPath(for: cell)
                                {
                                    self.eventsListTableView.reloadRows(at: [validPath], with: .none)
                                }
                                break
                            }
                        }
                    }
                }
            }
        }
    }
}

extension SportsEventsListController:UITableViewDelegate, UITableViewDataSource
{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(self.isSearchInProgress || self.errorMessage.count > 0 || self.dataSource.count <= 0)
        {
            return 1
        }
        return self.dataSource.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if(self.isSearchInProgress)
        {
            if let cell  = tableView.dequeueReusableCell(withIdentifier: "StatusTableViewCell", for: indexPath) as? StatusTableViewCell
            {
                cell.updateStatus(to: "Searching, please wait...")
                cell.accessoryType = .none
                return cell
            }
        }
        else if(self.dataSource.count<=0)
        {
            if let cell  = tableView.dequeueReusableCell(withIdentifier: "StatusTableViewCell", for: indexPath) as? StatusTableViewCell
            {
                cell.updateStatus(to: self.errorMessage.count > 0 ? self.errorMessage : "No Events.")
                cell.accessoryType = .none
                return cell
            }
        }
        if let cell  = tableView.dequeueReusableCell(withIdentifier: "SearchItemTableCell", for: indexPath) as? SearchItemTableCell
        {
            let sportEvent = self.dataSource[indexPath.row]
            cell.currentSport = sportEvent
            cell.accessoryType = .disclosureIndicator
            return cell
        }
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let selectedCell = tableView.cellForRow(at: indexPath) as? SearchItemTableCell
        {
            if let selectedEvent = selectedCell.currentSport
            {
                if let destination = self.storyboard?.instantiateViewController(withIdentifier: "SportsEventDetailsViewController") as? SportsEventDetailsViewController
                {
                    destination.currentSportsEventViewModel = selectedEvent
                    self.navigationController?.pushViewController(destination, animated: true)
                }
            }
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if(self.isSearchInProgress || self.dataSource.count<=0)
        {
            return 45
        }
        return 85
    }
}

extension SportsEventsListController:UISearchResultsUpdating
{
    func queryString() -> String {
        if let searchText = self.searchController.searchBar.text
        {
            return searchText
        }
        return ""
    }
    
    func updateSearchResults(for searchController: UISearchController)
    {
        if(self.queryString().count >= 3)
        {
            if(self.queryParam.lowercased() != self.queryString().lowercased())
            {
                self.searchEvents(forQuery: self.searchController.searchBar.text!)
            }
        }
        else
        {
            SportsEventsDataService.defaultService().cancelNetworkOperations()
            self.isSearchInProgress = false
            self.queryParam = self.queryString()
            self.dataSource.removeAll()
            if(self.queryParam.count >= 1)
            {
                self.errorMessage = "Type more keywords to proceed."
            }
            else
            {
                self.errorMessage = "No Events."
            }
        }
        self.eventsListTableView.reloadData()
    }
}



