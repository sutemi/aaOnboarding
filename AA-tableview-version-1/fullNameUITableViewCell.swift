//
//  fullNameUITableViewCell.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 10/18/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit

class fullNameUITableViewCell: UITableViewCell, UITextFieldDelegate {

    
//    @IBOutlet weak var cellLabelHeight: NSLayoutConstraint!
    @IBOutlet weak var cellLabel: UILabel!
    
    
    @IBOutlet weak var firstNameField: formUITextField!
    @IBOutlet weak var miField: formUITextField!
    @IBOutlet weak var lastNameField: formUITextField!
    @IBOutlet weak var suffixField: formUITextField!
    
//    var isComplete:Bool = false

    
    
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        
        
        firstNameField.addTarget(self, action: #selector(textFieldDidChange), for: UIControlEvents.editingChanged)
        firstNameField.delegate = self
        
        miField.addTarget(self, action: #selector(textFieldDidChange), for: UIControlEvents.editingChanged)
        miField.delegate = self
        
        lastNameField.addTarget(self, action: #selector(textFieldDidChange), for: UIControlEvents.editingChanged)
        lastNameField.delegate = self
        
        suffixField.addTarget(self, action: #selector(textFieldDidChange), for: UIControlEvents.editingChanged)
        suffixField.delegate = self
        
        self.clipsToBounds = true
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    
        
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let newLength = (textField.text?.characters.count)! + string.characters.count - range.length
        if textField == miField {
            return newLength <= 1 // Bool
        } else if textField == suffixField {
            return newLength <= 2 // Bool
        }
            
        return true
    }
    
    
    
    func textFieldDidChange(sender:formUITextField) {
        
        
        if firstNameField.text != "" || miField.text != "" || lastNameField.text != "" || suffixField.text != "" {
            
            UserManager.sharedManager.userFullName = "\(firstNameField.text!) \(miField.text!) \(lastNameField.text!) \(suffixField.text!)"
            cellLabel.text = UserManager.sharedManager.userFullName
            
        } else {
            
            cellLabel.text = ""
            
        }

    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        UserManager.sharedManager.userFullName = "\(firstNameField.text!) \(miField.text!) \(lastNameField.text!) \(suffixField.text!)"
        cellLabel.text = UserManager.sharedManager.userFullName
        
        textField.resignFirstResponder()
        return true
        
    }
    
    
    
    
    
    override func endEditing(_ force: Bool) -> Bool {
        self.resignFirstResponder()
        return true
    }
    
    
}
