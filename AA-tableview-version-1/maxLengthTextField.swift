//
//  maxLengthTextField.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 11/2/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit

class maxLengthTextField: UITextField, UITextFieldDelegate {
    
    private var characterLimit: Int?
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        delegate = self
    }
    
    @IBInspectable var maxLength: Int {
        get {
            guard let length = characterLimit else {
                return Int.max
            }
            return length
        }
        set {
            characterLimit = newValue
        }
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        guard string.characters.count > 0 else {
            return true
        }
        
        let currentText = textField.text ?? ""
        let prospectiveText = (currentText as NSString).replacingCharacters(in: range, with: string)
        
        // 1. Here's the first change...
        return allowedIntoTextField(text: prospectiveText)
    }
    
    // 2. ...and here's the second!
    func allowedIntoTextField(text: String) -> Bool {
        return text.characters.count <= maxLength
    }
    
}
