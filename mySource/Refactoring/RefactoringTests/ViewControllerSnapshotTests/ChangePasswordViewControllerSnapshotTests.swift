// 
// ChangePasswordViewControllerSnapshotTests
// RefactoringTests
// 
// Created by Fleshman, Jeremy on 10/23/21
// Copyright © 2020 ADT LLC dba ADT Security Services. All rights reserved.
//

import XCTest
import iOSSnapshotTestCase
import ViewControllerPresentationSpy
@testable import Refactoring

class ChangePasswordViewControllerSnapshotTests: FBSnapshotTestCase {
    private var sut: ChangePasswordViewController!
    private var passwordChanger: MockPasswordChanger!
    private var alertVerifier: AlertVerifier!
    
    override func setUp() {
        super.setUp()
        recordMode = false
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyboard.instantiateViewController(
            identifier: String(
                describing: ChangePasswordViewController.self))
        passwordChanger = MockPasswordChanger()
        sut.passwordChanger = passwordChanger
        alertVerifier = AlertVerifier()
        sut.loadViewIfNeeded()
    }
    
    override func tearDown() {
        executeRunLoop() // Clean out UIWindow
        sut = nil
        passwordChanger = nil
        alertVerifier = nil // Need the `VCPS` dependency
        super.tearDown()
    }
    
    // MARK: Valdate the Inputs
    private func setUpValidPasswordEntries() {
        sut.oldPasswordTextField.text = "NONEMPTY"
        sut.newPasswordTextField.text = "123456"
        sut.confirmPasswordTextField.text = sut.newPasswordTextField.text
    }
    
    // MARK: - Snapshot Helper
    private func verifySnapshot(file: StaticString = #file, line: UInt = #line) {
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.addSubview(sut.view)
        FBSnapshotVerifyViewController(sut, file: file, line: line)
    }
    
    
    // MARK: - Blur snapshot test
    func test_blur() {
        setUpValidPasswordEntries()
        
        tap(sut.submitButton)
        
        verifySnapshot()
        
//        FBSnapshotVerifyViewController(sut)
    }
    
}
