//
//  Analytics.swift
//  Analytics
//
//  Created by Jeremy Fleshman on 8/13/21.
//

import Foundation

/// Simulating an Analytics API to represent a difficult dependency
class Analytics {
    static let shared = Analytics()

    /// pretend this makes a network call to a web service
    func track(event: String) {
        print(">> " + event)

        if self !== Analytics.shared {
            print(">> ... Not the Analytics singleton")
        }
    }
}
