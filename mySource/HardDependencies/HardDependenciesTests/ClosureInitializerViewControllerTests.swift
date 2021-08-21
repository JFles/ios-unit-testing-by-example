//
//  ClosureInitializerViewControllerTests.swift
//  ClosureInitializerViewControllerTests
//
//  Created by Jeremy Fleshman on 8/15/21.
//

import XCTest
@testable import HardDependencies

class ClosureInitializerViewControllerTests: XCTestCase {

    func test_viewDidAppear() {
        // arrange
        let sut = ClosureInitializerViewController(makeAnalytics: { Analytics() })
        sut.loadViewIfNeeded()

        // act
        sut.viewDidAppear(false)

        // assert
    }

}
