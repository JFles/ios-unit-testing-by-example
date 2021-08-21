//
//  InstanceInitializerViewControllerTests.swift
//  InstanceInitializerViewControllerTests
//
//  Created by Jeremy Fleshman on 8/15/21.
//

import XCTest
@testable import HardDependencies

class InstanceInitializerViewControllerTests: XCTestCase {

    func test_viewDidAppear() {
        /// Not a big fan of providing a default for Constructor Injection -- it's too easy to miss when the DI is implicit
        /// I might end up changing my mind if it helps with boilerplate and makes `DI` easier
        /// Or at least less hated by other devs on the team
        let sut = InstanceInitializerViewController(analytics: Analytics())
        sut.loadViewIfNeeded()

        sut.viewDidAppear(false)

        // assert something

    }

}
