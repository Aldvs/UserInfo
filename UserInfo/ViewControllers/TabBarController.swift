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
    }
    
    private func getDataInTabBar(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? TabBarController else { return }
        guard let viewController = tabBarController.viewControllers else { return }
    
    }
}
