//
//  TabBarController.swift
//  UserInfo
//
//  Created by admin on 29.12.2021.
//

import UIKit

class TabBarController: UITabBarController {
    
    private var personsArray = Person.getPersonList(forDataArrays: DataManager.shared.names, DataManager.shared.surnames, DataManager.shared.emails, DataManager.shared.phones)

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    private func getDataInTabBar(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? TabBarController else { return }
        guard let viewController = tabBarController.viewControllers else { return }
    
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
