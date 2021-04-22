//
//  PersonListTwoViewController.swift
//  Persons list
//
//  Created by Marat Shagiakhmetov on 13.04.2021.
//

import UIKit

class PersonListTwoViewController: UITableViewController {
    
    var personList: [Person] = []
    private let images = Images.image
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 50
        tableView.sectionHeaderHeight = 30
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        personList.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        personList[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personNameRowOne", for: indexPath)
        
        cell.textLabel?.text = personList[indexPath.section].phoneAndEmail[indexPath.row]
        cell.imageView?.image = UIImage(systemName: images[indexPath.row])
        
        return cell
    }
    // MARK: - Table view delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

