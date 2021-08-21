//
//  MySingletonViewController.swift
//  MySingletonViewController
//
//  Created by Jeremy Fleshman on 8/14/21.
//

import UIKit

class MySingletonViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

            // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        MySingletonAnalytics.shared.track(event: "viewDidAppear - \(type(of: self))")
    }

}
