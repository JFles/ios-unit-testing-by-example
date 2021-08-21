//
//  InstancePropertyViewController.swift
//  InstancePropertyViewController
//
//  Created by Jeremy Fleshman on 8/14/21.
//

import UIKit

/// Storyboarded example
/// Cannot use `Constructor Injection`
/// Have to use `Property Injection` instead -- which is covered in this example
class InstancePropertyViewController: UIViewController {

    /// `Property Injection`
    /// Because it's `lazy`, we have an opportunity to preset our mock/stub
    /// before the SB initialized this value to `Analytics.shared`
    lazy var analytics = Analytics.shared

    override func viewDidLoad() {
        super.viewDidLoad()

            // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        /// points to local property `analytics` to refer to the injected instance
        analytics.track(event: "viewDidAppear - \(type(of: self))")
    }
    
}
