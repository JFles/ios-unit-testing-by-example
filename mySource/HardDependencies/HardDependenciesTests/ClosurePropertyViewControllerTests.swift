//
//  ClosurePropertyViewControllerTests.swift
//  ClosurePropertyViewControllerTests
//
//  Created by Jeremy Fleshman on 8/15/21.
//

import XCTest
@testable import HardDependencies

/// `Use Properties for Closures` example
class ClosurePropertyViewControllerTests: XCTestCase {

    func test_viewDidAppear() {
        // arrange
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let sut: ClosurePropertyViewController = storyboard
            .instantiateViewController(
                withIdentifier: String(describing: ClosurePropertyViewController.self)
            ) as! ClosurePropertyViewController

        /// This loads the VC from the storyboard
        #warning("EVAL: The book has an extra `loadViewIfNeeded()` but it might not be necessary")
        /// The extra `sut.loadViewIfNeeded()` is confusing and removing it DID NOT change test results
        /// WITHOUT this line, the dependency was successfully injected 
//        sut.loadViewIfNeeded()

        /// The closure is replaced
        sut.makeAnalytics = { Analytics() }

        ///
        sut.loadViewIfNeeded()

        sut.viewDidAppear(false)

        // assert
    }

}
