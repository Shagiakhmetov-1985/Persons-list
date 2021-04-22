//
//  DataManager.swift
//  Persons list
//
//  Created by Marat Shagiakhmetov on 19.04.2021.
//

class DataManager {

    static let shared = DataManager()
    
    let names = [
        "Bruce", "John", "Steven", "Aaron", "Tim", "Allan", "Sharon", "Ted",
        "Carl", "Nicola"
    ]
    let surnames = [
        "Butler", "Smith", "Black", "Robertson", "Murphy", "Williams",
        "Isaacson", "Jankin", "Peniworth", "Dow"
    ]
    let emails = [
        "butler@gmail.com", "smith@gmail.com", "black@gmail.com",
        "robertson@gmail.com", "murphy@gmail.com", "willians@gmail.com",
        "isaacson@gmail.com", "jankin@gmail.com", "peniworth@gmail.com",
        "dow@gmail.com"
    ]
    let phones = [
        "437651245", "438731094", "779401841", "116396120", "557014592",
        "458304911", "894914954", "668360120", "435609912", "773450912"
    ]
    
    private init() {}

}
