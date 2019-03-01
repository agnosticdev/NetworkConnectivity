//
//  ViewController.swift
//  macOSExample
//
//  Created by Matt Eaton on 2/12/19.
//  Copyright © 2019 Matt Eaton. All rights reserved.
//

import Cocoa
import NetworkConnectivity

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Setup the connectivity status URL here.
        let _ = NetworkConnectivity.shared.setup(with: "agnosticdev.com")
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}


extension ViewController: NetworkConnectivityDelegate {
    
    public func networkStatusChanged(online: Bool, connectivityStatus: String) {
        if online {
            // handle online status
        } else {
            // handle offline status
        }
        print("Online: \(online) connectivityStatus: \(connectivityStatus)")
    }
}
