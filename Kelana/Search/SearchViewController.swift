//
//  SearchViewController.swift
//  kelana
//
//  Created by Nabilla Azarine on 12/04/22.
//

import UIKit

class SearchViewController: UIViewController, UISearchResultsUpdating, UISearchBarDelegate {
    
    let data = MockData()
    
    let searchController = UISearchController(searchResultsController: nil)
    @IBOutlet weak var searchResultTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Search"
        initSearchController()
    }
    
    func initSearchController() {
        searchController.loadViewIfNeeded()
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.enablesReturnKeyAutomatically = false
        searchController.searchBar.returnKeyType = UIReturnKeyType.done
        definesPresentationContext = true
        
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
        searchController.searchBar.scopeButtonTitles = ["All", "Nature", "Shopping", "Camping", "Historical"]
        searchController.searchBar.delegate = self
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        let searchBar = searchController.searchBar
        let scopeButton = searchBar.scopeButtonTitles![searchBar.selectedScopeButtonIndex]
        let searchText = searchBar.text!
        
    }
    
    func filterForSearchTextAndScopeButton(searchText: String, scope: String = "All") {
//        filteredSearch
    }
    
}
