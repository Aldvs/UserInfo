//
//  DataManager.swift
//  UserInfo
//
//  Created by admin on 29.12.2021.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let names = [
        "Ivan", "Ilyas", "Matfey", "Andrey", "Pavel",
        "Victor", "Dmitriy", "Alexey", "Petr", "Uriy"
    ]
    
    let surnames = [
        "Kuznecov", "Strelcov", "Antonov", "Trenev", "Marks",
        "Lazarev", "Nahimov", "Popov", "Semashko", "Korolev"
    ]
    
    let emails = [
        "kkkkk@mail.ru", "lllll@mail.ru", "ooooo@mail.ru", "qqqqq@mail.ru", "wwwww@mail.ru",
        "ttttt@mail.ru", "ggggg@mail.ru", "uuuuu@mail.ru", "rrrrr@mail.ru", "eeeee@mail.ru"
    ]
    
    let phones = [
        "00000000", "11111111", "22222222", "33333333", "44444444",
        "79797979", "99999999", "88888888", "77777777", "55555555"
    ]
    
    private init() {}
}
