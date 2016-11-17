//
//  fullNameUITableViewCell.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 10/18/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit

class fullNameUITableViewCell: UITableViewCell, UITextFieldDelegate {

    
    @IBOutlet weak var cellLabelHeight: NSLayoutConstraint!
    @IBOutlet weak var cellLabel: UILabel!
    
    
    @IBOutlet weak var firstNameField: formUITextField!
    @IBOutlet weak var miField: formUITextField!
    @IBOutlet weak var lastNameField: formUITextField!
    @IBOutlet weak var suffixField: formUITextField!
    
    var isComplete:Bool = false

    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        cellLabelHeight.constant = 1

//        cellLabel.setLineSpacing(sender: self.cellLabel, amt: 4.0, align: "left")
        
        firstNameField.addTarget(self, action: #selector(textFieldDidChange), for: UIControlEvents.editingChanged)
        firstNameField.delegate = self
        
        miField.addTarget(self, action: #selector(textFieldDidChange), for: UIControlEvents.editingChanged)
        miField.delegate = self
        
        lastNameField.addTarget(self, action: #selector(textFieldDidChange), for: UIControlEvents.editingChanged)
        suffixField.addTarget(self, action: #selector(textFieldDidChange), for: UIControlEvents.editingChanged)
        suffixField.delegate = self
        
        self.clipsToBounds = true
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
//        if cellLabel.text != "" {
//            self.cellLabel.isHidden = false
//        } else {
//            self.cellLabel.isHidden = true
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
        
        
        if firstNameField.text != "" || lastNameField.text != "" {
            cellLabel.isHidden = false
            cellLabelHeight.constant = 20
            
            let labelText = "\(firstNameField.text!) \(miField.text!) \(lastNameField.text!) \(suffixField.text!)"
            cellLabel.text = labelText
            
        } else {
            
            cellLabelHeight.constant = 1
            cellLabel.isHidden = true
            
            cellLabel.text = ""
        }

    }
    
    
    
    override func endEditing(_ force: Bool) -> Bool {
        self.resignFirstResponder()
        return true
    }
    
    
}
