//
//  AssertYourselfTests.swift
//  AssertYourselfTests
//
//  Created by Jeremy Fleshman on 7/31/21.
//

import XCTest
@testable import AssertYourself

class AssertYourselfTests: XCTestCase {


    // MARK: - Writing Your First Assertion

    func test_fail() {
//        XCTFail()
    }


    // MARK: -  Add a Descriptive Message

    func test_fail_withSimpleMessage() {
        XCTFail("We have a problem")
    }

    func test_fail_withInterpolatedMessage() {
        let theAnswer = 42
        XCTFail("The Answer to the Great Question is \(theAnswer)")
    }


    // MARK: -  Avoid Conditionals in Tests

    func test_avoidConditionalCode() {
        let success = false
        if !success {
            XCTFail()
        }
    }

    func test_assertTrue() {
        let success = false
        XCTAssertTrue(success)
    }


    // MARK: -  Describe Objects upon Failure

    func test_assertNil() {
        let optionalValue: Int? = 32
        XCTAssertNil(optionalValue)
    }

    struct SimpleStruct {
        let x: Int
        let y: Int
    }

    func test_assertNil_withSimpleStruct() {
        let optionalValue: SimpleStruct? = SimpleStruct(x: 1, y: 2)
        XCTAssertNil(optionalValue)
    }

    /// Conforms to `CustomStringConvertible` to provide a custom description of the struct
    struct StructWithDescription: CustomStringConvertible {
        let x: Int
        let y: Int

        var description: String { "\(x), \(y)" }
    }

    func test_assertNil_withSelfDescribingType() {
        let optionalValue: StructWithDescription? = StructWithDescription(x: 1, y: 2)
        XCTAssertNil(optionalValue)
    }


    // MARK: - Test for Equality

    /// Jon says this is the most common assertion in unit testing
    /// AFAIK, that's a fair and true sentiment
    func test_assertEqual() {
        let actual = "actual"
        XCTAssertEqual(actual, "expected")
    }


    // MARK: - Test Equality with Optionals

    func test_assertEqual_withOptional() {
        let result: String? = "foo"
        XCTAssertEqual(result, "bar")
    }


    // MARK: - Fudge Equality with Doubles and Floats

    func test_floatingPointDanger() {
        let result = 0.1 + 0.2
        XCTAssertEqual(result, 0.3) // fails due to floating point accuracy
    }

    /// Use `accuracy` assertion parameter when checking equality with `Floats` and `Doubles`
    func test_floatingPointFixed() {
        let result = 0.1 + 0.2
        XCTAssertEqual(result, 0.3, accuracy: 0.0001) // `accuracy` parameter needed for floating point errors
    }


    // MARK: - Avoid Redundant Messages

    func test_messageOverkill() {
        let actual = "actual"
        XCTAssertEqual(
            actual, "expected",
            "Expected \"expected\" but got \"\(actual)\"" // what a fucking pain to type and read -- point made
        )
    }
}
