//
//  PersonListOneViewController.swift
//  Persons list
//
//  Created by Marat Shagiakhmetov on 13.04.2021.
//

import UIKit

class PersonListOneViewController: UITableViewController {

    private var personList = DataManager.getPersonList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 50
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personNameOne", for: indexPath)
        let person = personList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.title
        cell.contentConfiguration = content
        
        return cell
    }
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personDetailsVC = segue.destination as? PersonDetailsOneViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let person = personList[indexPath.row]
        personDetailsVC.person = person
    }
}
