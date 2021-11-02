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

/// Exposing NavigationBar system items for testing
/// Takes advantage of the underlying Objective-C implementation
func systemItem(
    for barButtonItem: UIBarButtonItem
) -> UIBarButtonItem.SystemItem {
    let systemItemNumber = barButtonItem.value(forKey: "systemItem") as! Int
    return UIBarButtonItem.SystemItem(rawValue: systemItemNumber)!
}

/// Defining custom string descriptions for SystemItems to make the error reporting more useful in Swift tests
/// Because this is an older Objective-C enumeration, it doesn't report very clearly in Swift
extension UIBarButtonItem.SystemItem: CustomStringConvertible {
    public var description: String {
        switch self {
        case .done: return "done"
        case .cancel: return "cancel"
        case .edit: return "edit"
        case .save: return "save"
        case .add: return "add"
        case .flexibleSpace: return "flexibleSpace"
        case .fixedSpace: return "fixedSpace"
        case .compose: return "compose"
        case .reply: return "reply"
        case .action: return "action"
        case .organize: return "organize"
        case .bookmarks: return "bookmarks"
        case .search: return "search"
        case .refresh: return "refresh"
        case .stop: return "stop"
        case .camera: return "camera"
        case .trash: return "trash"
        case .play: return "play"
        case .pause: return "pause"
        case .rewind: return "rewind"
        case .fastForward: return "fastForward"
        case .undo: return "undo"
        case .redo: return "redo"
        case .pageCurl: return "pageCurl"
        case .close: return "close"
        @unknown default: fatalError("Unknown UIBarButtonItem.SystemItem")
        }
    }
}

// MARK: - Test Input Focus Helpers

/// Refer to `Test Input Focus` in Part II
func tap(_ button: UIBarButtonItem) {
    _ = button.target?.perform(button.action, with: nil)
}

/// Adds current VC to the UIWindow for testing
func putInViewHierarchy(_ vc: UIViewController) {
    let window = UIWindow()
    window.addSubview(vc.view)
}

/// Extra step to clean up the UIWindow by executing the run loop
func executeRunLoop() {
    RunLoop.main.run(until: Date())
}


// MARK: - Test UIButton Helper

/// Helper to make tapping a `UIButton` more expressive at the call site
func tap(_ button: UIButton) {
    button.sendActions(for: .touchUpInside)
}


// MARK: - Test TextField Delegate Helpers

@discardableResult func shouldReturn(in textField: UITextField) -> Bool? {
    textField.delegate?.textFieldShouldReturn?(textField)
}
