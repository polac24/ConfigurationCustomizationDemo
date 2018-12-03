//
//  ViewController.swift
//  ConfigurationCustomization
//
//  Created by Bartosz Polaczyk on 03/12/2018.
//  Copyright © 2018 Bartosz Polaczyk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let configuration = Configuration()
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = configuration.buildVariant
    }


}

