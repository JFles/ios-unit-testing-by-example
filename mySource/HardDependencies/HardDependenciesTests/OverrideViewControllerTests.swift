//
//  OverrideViewControllerTests.swift
//  OverrideViewControllerTests
//
//  Created by Jeremy Fleshman on 8/15/21.
//

import XCTest
@testable import HardDependencies

/// `Subclass and Override` example
class OverrideViewControllerTests: XCTestCase {

    func test_viewDidAppear() {
        let sut = TestableOverrideViewController()
        sut.loadViewIfNeeded()

        sut.viewDidAppear(false)

        // assert something
    }

}

/// `OverrideViewController` subclass to replace the `singleton` with a `stub`
private class TestableOverrideViewController: OverrideViewController {

    #warning("EVAL: Should this be replaced with a stub?")
    override func analytics() -> Analytics { Analytics() }

}
