//
//  ViewController.swift
//  iOSExample
//
//  Created by Matt Eaton on 2/12/19.
//  Copyright © 2019 Matt Eaton. All rights reserved.
//

import UIKit
import NetworkConnectivity

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup the connectivity status URL here.
        let _ = NetworkConnectivity.shared.setup(with: "agnosticdev.com")
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
