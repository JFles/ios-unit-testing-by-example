//
//  MyClassTests.swift
//  LifeCycleTests
//
//  Created by Jeremy Fleshman on 8/4/21.
//

import XCTest
@testable import LifeCycle

enum ch2_1 {
//    class MyClassTests: XCTestCase {
//
//        /// Creating the `sut` as a property messes up the init/deinit lifecycle of tests
//        /// We want a `clean room` approach to each test, so we want the objects created for each test
//        private var sut = MyClass()
//
//        /// guaranteed failure to verify suite is running correctly
//        /// can be deleted after verifying it fails (Failure verifies the test suite is working)
//        //    func test_zero() {
//        //        XCTFail("Tests not yet implemented in MyClassTests")
//        //    }
//
//        /// first test connected to production code
//        func test_methodOne() {
//            // arrange
//            //        let sut = MyClass()
//
//            // act
//            sut.methodOne()
//
//            // assert
//        }
//
//        func test_methodTwo() {
//            /// arrange
//            //        let sut = MyClass()
//
//            /// act
//            sut.methodTwo()
//
//            /// assert
//        }
//    }
}

class MyClassTests: XCTestCase {
    private var sut: MyClass!

    override func setUp() {
        super.setUp()
        sut = MyClass()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func test_methodOne() {
        sut.methodOne()
    }

    func test_methodTwo() {
        sut.methodTwo()
    }
}
