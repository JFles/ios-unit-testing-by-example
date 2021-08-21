//
//  MySingletonAnalytics.swift
//  MySingletonAnalytics
//
//  Created by Jeremy Fleshman on 8/14/21.
//

import Foundation

/// `Add Backdoors to Singletons You Own`
class MySingletonAnalytics {
    private static let instance = MySingletonAnalytics()

    /// `Backdoor` to supply stub/mock
    #if DEBUG
    static var stubbedInstance: MySingletonAnalytics?
    #endif

    static var shared: MySingletonAnalytics {
            /// `Backdoor` to supply stub/mock -- Tests will initialize this
        #if DEBUG
        if let stubbedInstance = stubbedInstance {
            return stubbedInstance
        }
        #endif
        return instance
    }

    /// `Adapter design pattern` wraps the actual Analytics API
    func track(event: String) {
        Analytics.shared.track(event: event)

        /// `!==` is an identity operator for "not the same object in memory"
        if self !== MySingletonAnalytics.instance {
            print(">> Not the MySingletonAnalytics singleton")
        }
    }
}
