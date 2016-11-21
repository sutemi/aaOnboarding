//
//  accountTableViewCell.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 10/20/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit

class accountTableViewCell: UITableViewCell, UITextFieldDelegate {

    
    @IBOutlet weak var cellLabel: UILabel!
    @IBOutlet weak var cellLabelHeight: NSLayoutConstraint!
    
    @IBOutlet weak var acctField: formUITextField!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
        acctField.addTarget(self, action: #selector(textFieldDidChange), for: UIControlEvents.editingChanged)
        acctField.delegate = self
        
        if UserManager.sharedManager.acctNewNumber.characters.count > 0 {
            acctField.text = UserManager.sharedManager.acctNewNumber
        }
        
        self.clipsToBounds = true
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    
    func textFieldDidChange(sender:formUITextField) {
        
        
        if acctField.text != "" {
            
            UserManager.sharedManager.acctNewNumber = acctField.text!
            cellLabel.text = UserManager.sharedManager.acctNewNumber
            
        } else {
            
            cellLabel.text = ""
            
        }
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        UserManager.sharedManager.acctNewNumber = acctField.text!
        cellLabel.text = UserManager.sharedManager.acctNewNumber
        
        textField.resignFirstResponder()
        return true
        
    }
    
    
    override func endEditing(_ force: Bool) -> Bool {
        self.resignFirstResponder()
        return true
    }
}
