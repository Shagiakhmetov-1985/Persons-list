//
//  PersonDetailsOneViewController.swift
//  Persons list
//
//  Created by Marat Shagiakhmetov on 14.04.2021.
//

import UIKit

class PersonDetailsOneViewController: UIViewController {
    
    @IBOutlet weak var labelPhone: UILabel!
    @IBOutlet weak var labelEmail: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelPhone.text = person.phone
        labelEmail.text = person.email
        navigationItem.title = person.title
    }
}
