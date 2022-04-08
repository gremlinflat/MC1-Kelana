//
//  HomeViewController.swift
//  kelana
//
//  Created by Rizky Maulana on 08/04/22.
//

import UIKit

class HomeViewController: UIViewController, UISearchResultsUpdating {

    
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else{
             return
        }
    }
    

    let searchController = UISearchController()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = true
        title = "Denpasar, Bali"
        navigationItem.searchController = searchController
        searchController.searchResultsUpdater = self
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
