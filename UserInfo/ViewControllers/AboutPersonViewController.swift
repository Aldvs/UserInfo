//
//  AboutPersonViewController.swift
//  UserInfo
//
//  Created by admin on 29.12.2021.
//

import UIKit

class AboutPersonViewController: UIViewController {
    
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.fullName
        phoneLabel.text = "Phone Number: \(person.phone)"
        emailLabel.text = "E-mail: \(person.email)"
    }


}
