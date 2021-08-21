//
//  InstancePropertyViewControllerTests.swift
//  InstancePropertyViewControllerTests
//
//  Created by Jeremy Fleshman on 8/15/21.
//

import XCTest
@testable import HardDependencies

/// Testing a Storyboarded VC
/// Using `Property Injection` for DI
/// since `Constructor Injection` doesn't work for Storyboarded VCs
class InstancePropertyViewControllerTests: XCTestCase {

    func test_viewDidAppear() {
        // arrange
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let sut: InstancePropertyViewController = storyboard
            .instantiateViewController(
                withIdentifier: String(describing: InstancePropertyViewController.self)
            ) as! InstancePropertyViewController
        sut.analytics = Analytics() /// `Property Injection` magic

        // act
        sut.loadViewIfNeeded()
        sut.viewDidAppear(false)

        // assert
    }
}
