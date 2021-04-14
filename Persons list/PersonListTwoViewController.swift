//
//  PersonListTwoViewController.swift
//  Persons list
//
//  Created by Marat Shagiakhmetov on 13.04.2021.
//

import UIKit

class PersonListTwoViewController: UITableViewController {
    
    private var personList = DataManager.getPersonList()
    private let images = [UIImage(systemName: "phone"), UIImage(systemName: "tray")]
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        personList.count
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        30
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        50
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        personList[section].title
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personNameRowOne", for: indexPath)
        
        cell.textLabel?.text = personList[indexPath.section].phoneAndEmail[indexPath.row]
        cell.imageView?.image = images[indexPath.row]
        return cell
    }
    // MARK: - Table view delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

