// 
// TestHelpers
// RefactoringTests
// 
// Created by Fleshman, Jeremy on 8/22/21
// Copyright © 2020 ADT LLC dba ADT Security Services. All rights reserved.
//

import XCTest


/// `#file` and `#line`are `Literal Expressions`
/// https://docs.swift.org/swift-book/ReferenceManual/Expressions.html
/// `@autoclosure` allows the `{ }` to be eliminated for the closure argument -- still a closure, though
/// https://docs.swift.org/swift-book/LanguageGuide/Closures.html#ID543
func verifyMethodCalledOnce(
    methodName: String,
    callCount: Int,
    describeArguments: @autoclosure () -> String,
    file: StaticString = #file,
    line: UInt = #line
) -> Bool {
    if callCount == 0 {
        XCTFail("Wanted but not invoked \(methodName)",
                file: file, line: line)
        return false
    }
    if callCount > 1 {
        XCTFail("Wanted 1 time but was called \(callCount) times. " +
                "\(methodName) with \(describeArguments())",
                file: file, line: line)
        return false
    }
    return true
}

func verifyMethodNeverCalled(
    methodName: String,
    callCount: Int,
    describeArguments: @autoclosure () -> String,
    file: StaticString = #file,
    line: UInt = #line
) {
    let times = callCount == 1 ? "time" : "times"
    if callCount > 0 {
        XCTFail("Never wanted but was called \(callCount) \(times). " +
                "\(methodName) with \(describeArguments())",
                file: file, line: line)
    }
}
