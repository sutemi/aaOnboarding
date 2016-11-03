//
//  allowedCharsTextField.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 11/2/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import Foundation
import UIKit

class AllowedCharsTextField: maxLengthTextField {
    
    // 1
    @IBInspectable var allowedChars: String = ""
    
    
    //---------------------------------------------
    // Get the app's main bundle
    let mainBundle = Bundle.main
    let padding = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 8);
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    //---------------------------------------------

    
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        delegate = self
        
        //---------------------------------------------
        self.borderStyle = UITextBorderStyle.line
        self.layer.borderColor = UIColor(displayP3Red: 204/255, green: 204/255, blue: 204/255, alpha: 1.0).cgColor
        self.layer.borderWidth = 1
        self.layer.cornerRadius = 0
        
        self.frame.size.height = 50
        //---------------------------------------------
        
        
        // 2
        autocorrectionType = .no
    }
    
    // 3
    override func allowedIntoTextField(text: String) -> Bool {
        return super.allowedIntoTextField(text: text) &&
            text.containsOnlyCharactersIn(matchCharacters: allowedChars)
    }
    
}


// 4
private extension String {
    
    // Returns true if the string contains only characters found in matchCharacters.
    func containsOnlyCharactersIn(matchCharacters: String) -> Bool {
        let disallowedCharacterSet = CharacterSet(charactersIn: matchCharacters).inverted
        return self.rangeOfCharacter(from: disallowedCharacterSet) == nil
    }
    
}
