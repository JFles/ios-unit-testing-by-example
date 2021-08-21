//
//  MySingletonViewControllerTests.swift
//  MySingletonViewControllerTests
//
//  Created by Jeremy Fleshman on 8/15/21.
//

import XCTest
@testable import HardDependencies

class MySingletonViewControllerTests: XCTestCase {

    override func setUp() {
        super.setUp()
        MySingletonAnalytics.stubbedInstance = MySingletonAnalytics()
    }

    override func tearDown() {
        MySingletonAnalytics.stubbedInstance = nil
        super.tearDown()
    }

    func test_viewDidAppear() {
        /// arrange
        let sut = MySingletonViewController()

        /// act
        sut.loadViewIfNeeded()
        sut.viewDidAppear(false)

        /// assert


    }

}
