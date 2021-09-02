// 
// ChangePasswordViewControllerTests
// RefactoringTests
// 
// Created by Fleshman, Jeremy on 8/31/21
// Copyright © 2020 ADT LLC dba ADT Security Services. All rights reserved.
//

import XCTest
@testable import Refactoring

class ChangePasswordViewControllerTests: XCTestCase {
    private var sut: ChangePasswordViewController!
    
    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyboard.instantiateViewController(
            identifier: String(
                describing: ChangePasswordViewController.self))
        sut.loadViewIfNeeded()
    }
    
    override func tearDown() {
        executeRunLoop() // Clean out UIWindow
        sut = nil
        super.tearDown()
    }
    
    // MARK: - UI Configuration Tests
    
    /// can test SB outlets are connected by asserting that they're not nil after the
    /// setup method has instantiated the VC
    func test_outlets_shouldBeConnected() {
        XCTAssertNotNil(sut.navigationBar, "navigationBar")
        XCTAssertNotNil(sut.cancelBarButton, "cancelBarButton")
        XCTAssertNotNil(sut.oldPasswordTextField, "oldPasswordTextField")
        XCTAssertNotNil(sut.newPasswordTextField, "newPasswordTextField")
        XCTAssertNotNil(sut.confirmPasswordTextField, "confirmPasswordTextField")
        XCTAssertNotNil(sut.submitButton, "submitButton")
    }
    
    /// Verifying that the navBar title is correct
    /// Utilizes the exposed outlet for the SB's NavigationBar
    func test_navigationBar_shouldHaveTitle() {
        XCTAssertEqual(sut.navigationBar.topItem?.title, "Change Password")
    }
    
    /// Utilizing helper method to assert that the correct UIBarButton system item
    /// is being set for the ChangePasswordVC
    func test_cancelBarButtonItem_shouldBeSystemItemCancel() {
        XCTAssertEqual(systemItem(for: sut.cancelBarButton), .cancel)
    }
    
    func test_oldPasswordTextField_shouldHavePlaceholder() {
        XCTAssertEqual(sut.oldPasswordTextField.placeholder, "Current Password")
    }
    
    func test_newPasswordTextField_shouldHavePlaceholder() {
        XCTAssertEqual(sut.newPasswordTextField.placeholder, "New Password")
    }
    
    func test_confirmPasswordTextField_shouldHavePlaceholder() {
        XCTAssertEqual(sut.confirmPasswordTextField.placeholder, "Confirm New Password")
    }
    
    func test_submitButton_shouldHaveTitle() {
        XCTAssertEqual(sut.submitButton.currentTitle, "Submit")
    }
    
    func test_oldPasswordTextField_shouldHavePasswordAttributes() {
        let textField = sut.oldPasswordTextField!
        XCTAssertEqual(textField.textContentType, .password, "textContentType")
        XCTAssertTrue(textField.isSecureTextEntry, "secureTextEntry")
        XCTAssertTrue(textField.enablesReturnKeyAutomatically, "enablesReturnKeyAutomatically")
    }
    
    func test_newPasswordTextField_shouldHavePasswordAttributes() {
        let textField = sut.newPasswordTextField!
        XCTAssertEqual(textField.textContentType, .newPassword, "textContentType")
        XCTAssertTrue(textField.isSecureTextEntry, "secureTextEntry")
        XCTAssertTrue(textField.enablesReturnKeyAutomatically, "enablesReturnKeyAutomatically")
    }
    
    func test_confirmPasswordTextField_shouldHavePasswordAttributes() {
        let textField = sut.confirmPasswordTextField!
        XCTAssertEqual(textField.textContentType, .newPassword, "textContentType")
        XCTAssertTrue(textField.isSecureTextEntry, "secureTextEntry")
        XCTAssertTrue(textField.enablesReturnKeyAutomatically, "enablesReturnKeyAutomatically")
    }
    
    // MARK: - UI Behavior Tests
    
    /// Helper method to activate a particular textField as the first responder
    private func putFocusOn(textField: UITextField) {
        putInViewHierarchy(sut)
        textField.becomeFirstResponder()
    }
    
    func test_tappingCancel_withFocusOnOldPassword_shouldResignThatFocus() {
        /// arrange
        /// `putFocusOn` is needed to set the textField as the first responder
        /// UIKit does not guarantee that `becomeFirstResponder()` will
        /// set the requested field as the firstResponder, but this UIWindow
        /// workaround allows this behavior to be tested deterministically
        putFocusOn(textField: sut.oldPasswordTextField)
        XCTAssertTrue(sut.oldPasswordTextField.isFirstResponder, "precondition")
        
        /// act
        sut.oldPasswordTextField.resignFirstResponder()
        
        /// assert
        XCTAssertFalse(sut.oldPasswordTextField.isFirstResponder)
    }
}
