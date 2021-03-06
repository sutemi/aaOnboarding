//
//  nicknameTableViewCell.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 10/20/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit

class nicknameTableViewCell: UITableViewCell, UITextFieldDelegate {


    @IBOutlet weak var cellLabel: UILabel!
    @IBOutlet weak var cellLabelHeight: NSLayoutConstraint!
    
    @IBOutlet weak var nicknameField: formUITextField!
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        nicknameField.addTarget(self, action: #selector(textFieldDidChange), for: UIControlEvents.editingChanged)
        nicknameField.delegate = self
        
        if UserManager.sharedManager.acctNewNickname.characters.count > 0 {
            nicknameField.text = UserManager.sharedManager.acctNewNickname
        }
        
        self.clipsToBounds = true
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    
    func textFieldDidChange(sender:formUITextField) {
        
        
        if nicknameField.text != "" {
            
            UserManager.sharedManager.acctNewNickname = nicknameField.text!
            cellLabel.text = UserManager.sharedManager.acctNewNickname
            UserManager.sharedManager.acctWhich = UserManager.sharedManager.acctNewNickname
            
        } else {
            
            cellLabel.text = ""
            
        }
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        UserManager.sharedManager.acctNewNickname = nicknameField.text!
        cellLabel.text = UserManager.sharedManager.acctNewNickname
        
        UserManager.sharedManager.acctWhich = UserManager.sharedManager.acctNewNickname
        
        textField.resignFirstResponder()
        return true
        
    }
    
    
    override func endEditing(_ force: Bool) -> Bool {
        self.resignFirstResponder()
        return true
    }
    
}
