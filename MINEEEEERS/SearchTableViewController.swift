//
//  SearchTableViewController.swift
//  ReliefStarting
//
//  Created by rahaf alsaif on 05/08/1443 AH.
//

import UIKit

class SearchTableViewController: UITableViewController, UISearchBarDelegate{

    let Data = ["Spa","Barber Shop","Nail Spa","Salon","kids Salon", "Skin Care","Hair Treatment","Spa","Barber Shop","Nail Spa","Salon","kids Salon", "Skin Care","Hair Treatment"]
    var filteredDate: [String]!
    override func viewDidLoad() {
        super.viewDidLoad()
 
        SearchBar.delegate = self
        filteredDate = Data
    }

    @IBOutlet weak var SearchBar: UISearchBar!
    

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return filteredDate.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")! as UITableViewCell
        cell.textLabel?.text = filteredDate[indexPath.row]
        return cell
    }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filteredDate = []
        if searchText == ""{
            filteredDate = Data
        }

        else{
            
            for tt in Data{
            if tt.lowercased().contains(searchText.lowercased()){
                filteredDate.append(tt)
            }
        }
        }
        self.tableView.reloadData()
    }
    
    
}
