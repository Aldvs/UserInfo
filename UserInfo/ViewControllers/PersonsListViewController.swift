//
//  PersonListViewController.swift
//  UserInfo
//
//  Created by admin on 29.12.2021.
//

import UIKit

class PersonsListViewController: UITableViewController {
    
    var persons: [Person] = []

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personsCell", for: indexPath)
        let person = persons[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        cell.contentConfiguration = content
        
        return cell
    }

    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let personalInfoVC = segue.destination as? AboutPersonViewController else { return }
            personalInfoVC.person = persons[indexPath.row]
        }
    }

}
