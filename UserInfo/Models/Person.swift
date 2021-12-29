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
    static func getPersonList(forDataArrays ourArrays: [String]... ) -> [Person] {
        var persons = [Person]()
        var object = Person()
        
        for _ in 1...10 {
            ourArrays.forEach { Array in
                switch Array {
                case DataManager.shared.names:
                    object.name = Array.randomElement() ?? ""
                case DataManager.shared.surnames:
                    object.surname = Array.randomElement() ?? ""
                case DataManager.shared.emails:
                    object.email = Array.randomElement() ?? ""
                default:
                    object.phone = Array.randomElement() ?? ""
                }
            }
            persons.append(object)
        }
        return persons
    }
}
