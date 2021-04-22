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
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    var phoneAndEmail: [String] {
        [phone, email]
    }
}

extension Person {
    static func getPersonList() -> [Person] {
        
        var dataManagers: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        
        let iterationCount = min(names.count, surnames.count, emails.count, phones.count)
        
        for index in 0..<iterationCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phone: phones[index]
            )
            
            dataManagers.append(person)
        }
        
        return dataManagers
    }
}

struct Images {
    static var image = [
        "phone", "tray"
    ]
}
