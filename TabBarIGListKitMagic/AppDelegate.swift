//
//  AppDelegate.swift
//  TabBarIGListKitMagic
//
//  Created by Michael Fekadu on 6/21/17.
//  Copyright © 2017 mikes. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?


  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

    window = UIWindow(frame: UIScreen.main.bounds)
    window?.makeKeyAndVisible()

    let vc = TabBarController()

    let nav = UINavigationController(rootViewController: vc)

    window?.rootViewController = nav
    return true
  }
}
