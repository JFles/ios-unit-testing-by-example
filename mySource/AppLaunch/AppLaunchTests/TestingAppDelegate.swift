//
//  TestingAppDelegate.swift
//  AppLaunchTests
//
//  Created by Jeremy Fleshman on 8/8/21.
//

import UIKit

@objc(TestingAppDelegate)
class TestingAppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        print("<< Launching with TEST app delegate")
        return true
    }

}
