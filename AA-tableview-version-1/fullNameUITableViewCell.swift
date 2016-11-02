//
//  fullNameUITableViewCell.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 10/18/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit

class fullNameUITableViewCell: UITableViewCell, UITextFieldDelegate {

    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var firstNameField: formUITextField!
    @IBOutlet weak var miField: formUITextField!
    @IBOutlet weak var lastNameField: formUITextField!
    @IBOutlet weak var suffixField: formUITextField!
    
    var isComplete:Bool = false

    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

        
        
        firstNameField.addTarget(self, action: #selector(textFieldDidChange), for: UIControlEvents.editingChanged)
        
        miField.addTarget(self, action: #selector(textFieldDidChange), for: UIControlEvents.editingChanged)
        miField.delegate = self
        
        lastNameField.addTarget(self, action: #selector(textFieldDidChange), for: UIControlEvents.editingChanged)
        suffixField.addTarget(self, action: #selector(textFieldDidChange), for: UIControlEvents.editingChanged)
        suffixField.delegate = self
        
        self.clipsToBounds = true
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
//        if nameLabel.text == "" {
//            nameLabel.isHidden = true
//        } else {
//            nameLabel.isHidden = false
//        }
    }
    
    
        
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let newLength = (textField.text?.characters.count)! + string.characters.count - range.length
        if textField == miField {
            return newLength <= 1 // Bool
        } else if textField == suffixField {
            return newLength <= 3 // Bool
        }
            
        return true
    }
        
    
    
    func textFieldDidChange(sender:formUITextField) {
        
        switch sender {
        case firstNameField:
            print("editing: firstNameField")
            break
        case miField:
            print("editing: miField")
            break
        case lastNameField:
            print("editing: lastNameField")
            break
        case suffixField:
            print("editing: suffixField")
            break
        default:
            break
        }
        
//        var fullNameArray = [String]()
//        fullNameArray.
        
        if firstNameField.text != "" && lastNameField.text != "" {
//            self.isComplete = true
            
            
            nameLabel.isHidden = false
            
            let labelText = "\(firstNameField.text!) \(miField.text) \(lastNameField.text!) \(suffixField.text)"
            nameLabel.text = labelText
        } else {
            nameLabel.isHidden = true
        }


    }
    
    
    
    override func endEditing(_ force: Bool) -> Bool {
        self.resignFirstResponder()
        return true
    }
    
    
}
