//
//  ClosurePropertyViewController.swift
//  ClosurePropertyViewController
//
//  Created by Jeremy Fleshman on 8/14/21.
//

import UIKit

/// Storyboarded VC
/// `Use Properties for Closures`
class ClosurePropertyViewController: UIViewController {

    /// `Inject Property with a closure` -- will override the closure when testing to inject a mock
    /// Does not need to be `lazy` since the closure won't execute until its called
    var makeAnalytics: () -> Analytics = { Analytics.shared }

    override func viewDidLoad() {
        super.viewDidLoad()

            // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        /// Use the injected property closure
        makeAnalytics().track(event: "viewDidAppear - \(type(of: self))")
    }

}
