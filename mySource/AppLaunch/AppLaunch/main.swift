//
//  main.swift
//  AppLaunch
//
//  Created by Jeremy Fleshman on 8/8/21.
//

import UIKit

/// Custom `main.swift` to allow us to inject a testingAppDelegate when running unit tests

/// If we are running tests, the `TestingAppDelegate` will be used
/// If we are running the app normally, the TestingAppBundle will be not found,
/// so this will be nil and default to `AppDelegate`
let appDelegateClass: AnyClass =
    NSClassFromString("TestingAppDelegate") ?? AppDelegate.self

UIApplicationMain(
    CommandLine.argc,
    CommandLine.unsafeArgv,
    nil,
    NSStringFromClass(appDelegateClass)
)
