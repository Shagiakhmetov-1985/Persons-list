//
//  StartTabBarViewController.swift
//  Persons list
//
//  Created by Marat Shagiakhmetov on 19.04.2021.
//

import UIKit

class StartTabBarViewController: UITabBarController {
    
    let persons = Person.getPersonList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers(persons: persons)
    }
    
    private func setupViewControllers(persons: [Person]) {
        let contactListVC = viewControllers?.first as! PersonListOneViewController
        let sectionVC = viewControllers?.last as! PersonListTwoViewController
        
        contactListVC.personList = persons
        sectionVC.personList = persons
    }
}
