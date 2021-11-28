// 
// ChangePasswordViewController
// Refactoring
// 
// Created by Fleshman, Jeremy on 8/21/21
// Copyright © 2020 ADT LLC dba ADT Security Services. All rights reserved.
//

import UIKit

class ChangePasswordViewController: UIViewController {

    // MARK: - Properties
    
    /// Adding an outlet for the navigationBar to expose access to tests
    @IBOutlet private(set) var navigationBar: UINavigationBar!
    
    @IBOutlet private(set) var cancelBarButton: UIBarButtonItem!
    @IBOutlet private(set) var oldPasswordTextField: UITextField!
    @IBOutlet private(set) var newPasswordTextField: UITextField!
    @IBOutlet private(set) var confirmPasswordTextField: UITextField!
    @IBOutlet private(set) var submitButton: UIButton!
    
    /// Change from `private` to `lazy` to use `Property Injection` in tests
    lazy var passwordChanger: PasswordChanging = PasswordChanger()
    
    var securityToken = ""
    // need props to be exposed to tests
    let blurView = UIVisualEffectView(effect: UIBlurEffect(style: .dark))
    let activityIndicator = UIActivityIndicatorView(style: .large)
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        
    }
    
    // MARK: - Layout
    
    private func configureUI() {
        layoutSubmitButton()
        layoutBlurView()
        layoutActivityIndicator()
    }
    
    private func layoutSubmitButton() {
        submitButton.layer.borderWidth = 1
        submitButton.layer.borderColor = UIColor(
            red: 55/255.0, green: 147/255.0, blue: 251/255.0, alpha: 1
        ).cgColor
        submitButton.layer.cornerRadius = 8
    }
    
    private func layoutBlurView() {
        blurView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func layoutActivityIndicator() {
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        activityIndicator.color = .white
    }
    
    // MARK: - Actions
    
    @IBAction private func cancel() {
        oldPasswordTextField.resignFirstResponder()
        newPasswordTextField.resignFirstResponder()
        confirmPasswordTextField.resignFirstResponder()
        dismiss(animated: true)
    }
    
    @IBAction private func changePassword() {
        guard validateInputs() else { return }
        setUpWaitingAppearance()
        attemptToChangePassword()
    }
    
    private func validateInputs() -> Bool {
        if oldPasswordTextField.text?.isEmpty ?? true {
            oldPasswordTextField.becomeFirstResponder()
            return false
        }

        if newPasswordTextField.text?.isEmpty ?? true {
            showAlert(message: "Please enter a new password.") { [weak self] _ in
                self?.newPasswordTextField.becomeFirstResponder()
            }
            return false
        }

        if newPasswordTextField.text?.count ?? 0 < 6 {
            showAlert(message: "The new password should have at least 6 characters.") { [weak self] _ in
                guard let self = self else { return }
                self.newPasswordTextField.text = ""
                self.confirmPasswordTextField.text = ""
                self.newPasswordTextField.becomeFirstResponder()
            }
            return false
        }

        if newPasswordTextField.text != confirmPasswordTextField.text {
            showAlert(message: "The new password and the confirmation password "
                             + "don’t match. Please try again.") { [weak self] _ in
                guard let self = self else { return }
                self.newPasswordTextField.text = ""
                self.confirmPasswordTextField.text = ""
                self.newPasswordTextField.becomeFirstResponder()
            }
            return false
        }
        return true
    }
    
    private func showAlert(message: String,
                           okAction: @escaping (UIAlertAction) -> Void) {
        let alertController = UIAlertController(
            title: nil,
            message: message,
            preferredStyle: .alert)
        let okButton = UIAlertAction(
            title: "OK",
            style: .default,
            handler: okAction)
        alertController.addAction(okButton)
        alertController.preferredAction = okButton
        self.present(alertController, animated: true)
    }
    
    private func setUpWaitingAppearance() {
        oldPasswordTextField.resignFirstResponder()
        newPasswordTextField.resignFirstResponder()
        confirmPasswordTextField.resignFirstResponder()
        cancelBarButton.isEnabled = false
        view.backgroundColor = .clear
        view.addSubview(blurView)
        view.addSubview(activityIndicator)
        NSLayoutConstraint.activate([
            blurView.heightAnchor.constraint(equalTo: view.heightAnchor),
            blurView.widthAnchor.constraint(equalTo: view.widthAnchor),
            activityIndicator.centerXAnchor.constraint(
                equalTo: view.centerXAnchor),
            activityIndicator.centerYAnchor.constraint(
                equalTo: view.centerYAnchor),
        ])
        activityIndicator.startAnimating()
    }
    
    private func attemptToChangePassword() {
        passwordChanger.change(
            securityToken: securityToken,
            oldPassword: oldPasswordTextField.text ?? "",
            newPassword: newPasswordTextField.text ?? "",
            onSuccess: { [weak self] in
                self?.activityIndicator.stopAnimating()
                self?.activityIndicator.removeFromSuperview()
                let alertController = UIAlertController(
                    title: nil,
                    message: "Your password has been successfully changed.",
                    preferredStyle: .alert)
                let okButton = UIAlertAction(
                    title: "OK",
                    style: .default) { [weak self] _ in
                    self?.dismiss(animated: true)
                }
                alertController.addAction(okButton)
                alertController.preferredAction = okButton
                self?.present(alertController, animated: true)
            },
            onFailure: { [weak self] message in
                self?.activityIndicator.stopAnimating()
                self?.activityIndicator.removeFromSuperview()
                let alertController = UIAlertController(
                    title: nil,
                    message: message,
                    preferredStyle: .alert)
                let okButton = UIAlertAction(
                    title: "OK",
                    style: .default) { [weak self] _ in
                    self?.oldPasswordTextField.text = ""
                    self?.newPasswordTextField.text = ""
                    self?.confirmPasswordTextField.text = ""
                    self?.oldPasswordTextField.becomeFirstResponder()
                    self?.view.backgroundColor = .white
                    self?.blurView.removeFromSuperview()
                    self?.cancelBarButton.isEnabled = true
                }
                alertController.addAction(okButton)
                alertController.preferredAction = okButton
                self?.present(alertController, animated: true)
            })
    }
    
}

// MARK: - Textfield Delegate
extension ChangePasswordViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField === oldPasswordTextField {
            newPasswordTextField.becomeFirstResponder()
        } else if textField === newPasswordTextField {
            confirmPasswordTextField.becomeFirstResponder()
        } else if textField === confirmPasswordTextField {
            changePassword()
        }
        return true
    }
}
