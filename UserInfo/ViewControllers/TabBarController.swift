//
//  TabBarController.swift
//  UserInfo
//
//  Created by admin on 29.12.2021.
//

import UIKit

class TabBarController: UITabBarController {
    
    private var personsArray = Person.getPersonsList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        guard let personsListVC = viewControllers?.first as? PersonsListViewController else { return }
        guard let personsInfoVC = viewControllers?.last as? PersonsInfoListViewController else { return }
        
        personsListVC.persons = personsArray
        personsInfoVC.persons = personsArray
    }
    
}
