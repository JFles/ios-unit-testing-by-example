//
//  CodeBasedViewControllerTests.swift
//  LoadViewControllersTests
//
//  Created by Jeremy Fleshman on 8/8/21.
//

import XCTest
@testable import LoadViewControllers

class CodeBasedViewControllerTests: XCTestCase {

//    func test_zero_doNothing() {
//        XCTFail("Make sure XCTestCase subclass can fail")
//    }

    func test_loading() {
        /// arrange
        let sut = CodeBasedViewController(data: "DUMMY")
        sut.loadViewIfNeeded()

        /// act

        /// assert
    }

}
