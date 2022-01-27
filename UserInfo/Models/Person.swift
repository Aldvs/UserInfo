//
//  Person.swift
//  UserInfo
//
//  Created by admin on 28.12.2021.
//

import Foundation

struct Person {
    var name: String = ""
    var surname: String = ""
    var email: String = ""
    var phone: String = ""
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getPersonsList() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        
        let iterationCount = min(
            names.count,
            surnames.count,
            emails.count,
            phones.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phone: phones[index]
            )
            persons.append(person)
        }
        return persons
    }
}

enum Contacts: String {
    case phone = "phone.circle"
    case email = "envelope.circle"
}
