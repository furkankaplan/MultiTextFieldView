//
//  OTPPinEntryTextField.swift
//  OTPPinEntry
//
//  Created by Furkan Kaplan on 10.05.2020.
//  Copyright © 2020 Furkan Kaplan. All rights reserved.
//

import UIKit

//
// Textfield delegate methods gives you the opportunity of handling backspace tapping.
// But this triggering only works for the textfields that already have text being set.
// If not, you can not handle backspace tapping casual UITextFieldDelegate methods.
// This class was created to overcome the issue.
// http://lifesforlearning.com/detect-backspace-on-ios-textfield/
// https://stackoverflow.com/questions/1977934/detect-backspace-in-empty-uitextfield
//
public protocol MultiTextFieldDelegate: UITextFieldDelegate {
    
    // Called after tapping backspace in keyboard if the textfield is already empty.
    func textField(backspaceTapped textField: MultiTextField)
    
}
public class MultiTextField: UITextField {
    
    public override func deleteBackward() {
        super.deleteBackward()
        
        // If conforming to our extension protocol
        if let pinDelegate = self.delegate as? MultiTextFieldDelegate {
            pinDelegate.textField(backspaceTapped: self)
        }
    }
    
}


