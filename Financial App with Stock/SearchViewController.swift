//
//  ViewController.swift
//  Financial App with Stock
//
//  Created by Anudhi on 23/05/23.
//

import UIKit

class SearchViewController: UITableViewController {
    
    //Creating a SearchBar
    private lazy var searchController : UISearchController = {
        let sc = UISearchController(searchResultsController: nil)
        sc.searchResultsUpdater = self
        sc.delegate = self
        sc.obscuresBackgroundDuringPresentation = false
        sc.searchBar.placeholder = "Enter a company name or symbol"
        sc.searchBar.autocapitalizationType = .allCharacters
        return sc
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupNavigationBar()
    }
    
    func setupNavigationBar(){
        self.title = "Stocks"
        navigationItem.searchController = searchController
    }
}

extension SearchViewController : UISearchResultsUpdating, UISearchControllerDelegate {
    
    func updateSearchResults(for searchController: UISearchController) {
        
    }
}
