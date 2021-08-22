// 
// ViewController
// Refactoring
// 
// Created by Fleshman, Jeremy on 8/21/21
// Copyright © 2020 ADT LLC dba ADT Security Services. All rights reserved.
//

import UIKit

/// Initial VC
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    /// Have to pass the security token to the Change Password VC
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        if segue.identifier == "changePassword" {
            let changePasswordVC = segue.destination as? ChangePasswordViewController
            changePasswordVC?.securityToken = "TOKEN"
        }
    }

}

