//
//  CoveredClassTests.swift
//  CodeCoverageTests
//
//  Created by Jeremy Fleshman on 8/7/21.
//

@testable import CodeCoverage
import XCTest

class CoveredClassTests: XCTestCase {

    func test_max_with1and2_shouldReturn2() {
        /// arrange

        /// act
        let result = CoveredClass.max(1, 2)
        print(result)

        /// assert
        XCTAssertEqual(result, 2)

    }

    func test_max_with3and2_shouldReturn3() {
        /// arrange

        /// act
        let result = CoveredClass.max(3, 2)

        /// assert
        XCTAssertEqual(result, 3)
    }

    func test_commaSeparated_from2to4_shouldReturn234SeparatedByCommas() {
        /// arrange

        /// act
        let result = CoveredClass.commaSeparated(from: 2, to: 4)

        /// assert
        XCTAssertEqual(result, "2,3,4")
    }

    func test_commaSeparated_from2to2_shouldReturn2WithNoComma() {
        /// arrange

        /// act
        let result = CoveredClass.commaSeparated(from: 2, to: 2)

        /// assert
        XCTAssertEqual(result, "2")
    }

    func test_area_withWidth7_shouldBe49() {
        /// arrange
        let sut = CoveredClass()

        /// act
        sut.width = 7

        /// assert
        XCTAssertEqual(sut.area, 49)
    }

}
