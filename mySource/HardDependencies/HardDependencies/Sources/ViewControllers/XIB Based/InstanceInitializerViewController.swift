//
//  InstanceInitializerViewController.swift
//  InstanceInitializerViewController
//
//  Created by Jeremy Fleshman on 8/14/21.
//

import UIKit

/// `DI` Example with `Constructor Injection`
class InstanceInitializerViewController: UIViewController {

    private let analytics: Analytics

    /// `Constructor Injection`
    init(analytics: Analytics = Analytics.shared) {
        self.analytics = analytics
        super.init(nibName: nil, bundle: nil)
    }

    /// Required by the compiler 🤷‍♂️
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

            // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        /// Using the injected instance for `DI`
        analytics.track(event: "viewDidAppear - \(type(of: self))")
    }

}
