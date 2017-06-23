//
//  TabBarController.swift
//  TabBarIGListKitMagic
//
//  Created by Michael Fekadu on 6/21/17.
//  Copyright © 2017 mikes. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let list = ViewController()
    let nav1 = UINavigationController(rootViewController: list)
    nav1.title = "LIST"
    // var imageName1 = "logo"
    //nav1.tabBarItem.image = UIImage(named: imageName1)

    let map = ViewController()
    let nav2 = UINavigationController(rootViewController: map)
    nav2.title = "MAP"
    // var imageName2 = "logo"
    //nav2.tabBarItem.image = UIImage(named: imageName2)

    let listClean = ListViewController()
    let nav3 = UINavigationController(rootViewController: listClean)
    nav3.title = "List???"
    // var imageName2 = "logo"
    //nav2.tabBarItem.image = UIImage(named: imageName2)

    viewControllers = [nav1, nav2, nav3]
  }
}
