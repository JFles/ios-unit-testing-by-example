//
//  ClosureInitializerViewController.swift
//  ClosureInitializerViewController
//
//  Created by Jeremy Fleshman on 8/14/21.
//

import UIKit

/// `Inject Closures to Make New Instances`
/// This technique is needed when code inside the class wants to create an
/// instance of a difficult dependency
/// E.g. based on user input
/// Solution -> Inject closures to defer instance creation (acts like a small factory)
class ClosureInitializerViewController: UIViewController {

    /// Closure property -- functions like a small factory
    /// Solves difficult dependencies made in the class code
    /// By allowing deferred instantiation
    private let makeAnalytics: () -> Analytics

    init(makeAnalytics: @escaping () -> Analytics = { Analytics.shared }) {
        self.makeAnalytics = makeAnalytics
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

            // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        makeAnalytics().track(event: "viewDidAppear - \(type(of: self))")
    }

}
