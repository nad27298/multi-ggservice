//
//  ViewController.swift
//  MultiGoogleService
//
//  Created by Chi Xuan on 18/10/2021.
//

import UIKit

class ViewController: UIViewController {
    
    var appIdOnAppStore: String? {
        return Bundle.main.infoDictionary?["CFBundleIdentifier"] as? String
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        
        if let appId = appIdOnAppStore {
            print(appId)
        }
        
    }


}

