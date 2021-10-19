//
//  ViewController.swift
//  MultiGoogleService
//
//  Created by Chi Xuan on 18/10/2021.
//

import UIKit

class ViewController: UIViewController {
    
    enum Configuration: String {

        // MARK: - Configurations

        case staging
        case debug
        case release

        // MARK: - Current Configuration

        static let current: Configuration = {
            guard let rawValue = Bundle.main.infoDictionary?["Configuration"] as? String else {
                fatalError("No Configuration Found")
            }

            guard let configuration = Configuration(rawValue: rawValue.lowercased()) else {
                fatalError("Invalid Configuration")
            }

            return configuration
        }()

    }
    
    @IBOutlet weak var configLabel: UILabel!
    
    var appIdOnAppStore: String? {
        return Bundle.main.infoDictionary?["CFBundleIdentifier"] as? String
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let appId = appIdOnAppStore {
            print(appId)
        }
        
        print(Configuration.current)
        
        switch Configuration.current{
        case Configuration.debug:
            self.configLabel.text = "DEBUG"
        case Configuration.staging:
            self.configLabel.text = "STAGING"
        case Configuration.release:
            self.configLabel.text = "RELEASE"
        }
        
//        #if DEBUG
//        self.configLabel.text = "DEBUG"
//        #elseif STAGING
//        self.configLabel.text = "STAGING"
//        #else
//        self.configLabel.text = "RELEASE"
//        #endif
        
    }


}

