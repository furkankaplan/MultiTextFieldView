//
//  ViewController.swift
//  OTPPinEntryViewExample
//
//  Created by Furkan Kaplan on 19.05.2020.
//  Copyright © 2020 Furkan Kaplan. All rights reserved.
//

import UIKit
import MultiTextFieldView

class ViewController: UIViewController {

    @IBOutlet weak var pinView: MultiTextFieldView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pinView.delegate = self
        pinView.isSecure = true
        pinView.count = 6 // Important! You must configure the view just before the count being set.
    }

}

extension ViewController: MultiTextFieldViewDelegate {
    
    func multiTextField(string text: String) {
        print(text)
    }
    
}
