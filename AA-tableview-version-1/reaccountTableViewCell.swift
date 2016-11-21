//
//  reaccountTableViewCell.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 10/20/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit

class reaccountTableViewCell: UITableViewCell, UITextFieldDelegate {

    
    @IBOutlet weak var cellLabel: UILabel!
    @IBOutlet weak var cellLabelHeight: NSLayoutConstraint!
    
    @IBOutlet weak var reAcctField: formUITextField!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        reAcctField.addTarget(self, action: #selector(textFieldDidChange), for: UIControlEvents.editingChanged)
        reAcctField.delegate = self
        
        if UserManager.sharedManager.acctNewReNumber.characters.count > 0 {
            reAcctField.text = UserManager.sharedManager.acctNewReNumber
        }
        
        self.clipsToBounds = true
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    
    func textFieldDidChange(sender:formUITextField) {
        
        
        if reAcctField.text != "" {
            
            UserManager.sharedManager.acctNewReNumber = reAcctField.text!
            cellLabel.text = UserManager.sharedManager.acctNewReNumber
            
        } else {
            
            cellLabel.text = ""
            
        }
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        UserManager.sharedManager.acctNewReNumber = reAcctField.text!
        cellLabel.text = UserManager.sharedManager.acctNewReNumber
        
        textField.resignFirstResponder()
        return true
        
    }
    
    
    override func endEditing(_ force: Bool) -> Bool {
        self.resignFirstResponder()
        return true
    }
    
}
