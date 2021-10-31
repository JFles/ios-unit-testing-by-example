// 
// MockPasswordChanger
// RefactoringTests
// 
// Created by Fleshman, Jeremy on 8/22/21
// Copyright © 2020 ADT LLC dba ADT Security Services. All rights reserved.
//

import XCTest
@testable import Refactoring

final class MockPasswordChanger: PasswordChanging {
    private var changeCallCount = 0
    private var changeArgsSecurityToken: [String] = []
    private var changeArgsOldPassword: [String] = []
    private var changeArgsNewPassword: [String] = []
    private var changeArgsOnSuccess: [() -> Void] = []
    private var changeArgsOnFailure: [(String) -> Void] = []
    
    func change(
        securityToken: String,
        oldPassword: String,
        newPassword: String,
        onSuccess: @escaping () -> Void,
        onFailure: @escaping (String) -> Void
    ) {
        changeCallCount += 1
        changeArgsSecurityToken.append(securityToken)
        changeArgsOldPassword.append(oldPassword)
        changeArgsNewPassword.append(newPassword)
        changeArgsOnSuccess.append(onSuccess)
        changeArgsOnFailure.append(onFailure)
    }
    
    func verifyChange(
        securityToken: String,
        oldPassword: String,
        newPassword: String,
        file: StaticString = #file,
        line: UInt = #line
    ) {
        guard changeWasCalledOnce(file: file, line: line) else { return }
        XCTAssertEqual(changeArgsSecurityToken.last, securityToken,
                       "security token", file: file, line: line)
        XCTAssertEqual(changeArgsOldPassword.last, oldPassword,
                       "old password", file: file, line: line)
        XCTAssertEqual(changeArgsNewPassword.last, newPassword,
                       "new password", file: file, line: line)
        }
    
    func verifyChangeNeverCalled(
        file: StaticString = #file, line: UInt = #line
    ) {
        changeWasNeverCalled(file: file, line: line)
    }
    
    func changeCallSuccess(file: StaticString = #file, line: UInt = #line) {
        // verify that this isn't called multiple times
        // This is a VERY good test that would help identify if we have duplicated
        // client side calls from flow/logic errors
        guard changeWasCalledOnce(file: file, line: line) else { return }
        
        // This calls the respective completion block from `mock Password Changer`
        changeArgsOnSuccess.last!()
    }
    
    func changeCallFailure(message: String, file: StaticString = #file, line: UInt = #line) {
        guard changeWasCalledOnce(file: file, line: line) else { return }
        
        // This calls the respective completion block from `mock Password Changer`
        changeArgsOnFailure.last!(message)
    }
    
    // MARK: - Helpers
    
    private func changeWasCalledOnce(
        file: StaticString = #file, line: UInt = #line
    ) -> Bool {
        verifyMethodCalledOnce(
            methodName: changeMethodName,
            callCount: changeCallCount,
            describeArguments: changeMethodArguments,
            file: file, line: line
        )
    }
    
    private func changeWasNeverCalled(
        file: StaticString = #file, line: UInt = #line
    ) {
        verifyMethodNeverCalled(
            methodName: changeMethodName,
            callCount: changeCallCount,
            describeArguments: changeMethodArguments,
            file: file, line: line
        )
    }
    
    private var changeMethodName: String {
        "change(securityToken:oldPassword:newPassword:onSuccess:onFailure:)"
    }
    
    private var changeMethodArguments: String {
        "oldPasswords: \(changeArgsOldPassword), " +
            "newPasswords: \(changeArgsNewPassword)"
    }
}
