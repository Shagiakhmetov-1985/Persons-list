//
//  Persons.swift
//  Persons list
//
//  Created by Marat Shagiakhmetov on 13.04.2021.
//

struct Person {
    var name: String
    var surname: String
    var email: String
    var phone: String
    
    var title: String {
        "\(name) \(surname)"
    }
    
    var phoneAndEmail: [String] {
        [phone, email]
    }
}

class DataManager {
    static func getPersonList() -> [Person] {
        var dataManagers: [Person] = []
        let names: Set = ["Bruce", "John", "Steven", "Aaron", "Tim", "Allan",
                          "Sharon", "Ted", "Carl", "Nicola"]
        let surnames: Set = ["Butler", "Smith", "Black", "Robertson", "Murphy",
                             "Williams", "Isaacson", "Jankin", "Peniworth", "Dow"]
        let emails: Set = ["butler@gmail.com", "smith@gmail.com", "black@gmail.com",
                           "robertson@gmail.com", "murphy@gmail.com", "willians@gmail.com",
                           "isaacson@gmail.com", "jankin@gmail.com", "peniworth@gmail.com",
                           "dow@gmail.com"]
        let phones: Set = ["437651245", "438731094", "779401841", "116396120",
                           "557014592", "458304911", "894914954", "668360120",
                           "435609912", "773450912"]
        
        for index in 0...Array(names).count - 1 {
            let person = Person(name: Array(names)[index],
                   surname: Array(surnames)[index],
                   email: Array(emails)[index],
                   phone: Array(phones)[index])
            dataManagers.append(person)
        }
        
        return dataManagers
    }
}
