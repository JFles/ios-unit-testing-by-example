//
//  OverrideViewController.swift
//  OverrideViewController
//
//  Created by Jeremy Fleshman on 8/14/21.
//

import UIKit

class OverrideViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    /// Extracted `singleton` for `Subclass and Override` dependency-breaking technique
    func analytics() -> Analytics { Analytics.shared }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        analytics().track(event: "viewDidAppear - \(type(of: self))")
    }

}
