//
//  routingTableViewCell.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 10/20/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit

class routingTableViewCell: UITableViewCell, UITextFieldDelegate {

    @IBOutlet weak var cellLabel: UILabel!
    @IBOutlet weak var cellLabelHeight: NSLayoutConstraint!

    @IBOutlet weak var routingField: formUITextField!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        routingField.addTarget(self, action: #selector(textFieldDidChange), for: UIControlEvents.editingChanged)
        routingField.delegate = self
        
        if UserManager.sharedManager.acctNewRouting.characters.count > 0 {
            routingField.text = UserManager.sharedManager.acctNewRouting
        }
        
        self.clipsToBounds = true
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    
    func textFieldDidChange(sender:formUITextField) {
        
        
        if routingField.text != "" {
            
            UserManager.sharedManager.acctNewRouting = routingField.text!
            cellLabel.text = UserManager.sharedManager.acctNewRouting
            
        } else {
            
            cellLabel.text = ""
            
        }
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        UserManager.sharedManager.acctNewRouting = routingField.text!
        cellLabel.text = UserManager.sharedManager.acctNewRouting
        
        textField.resignFirstResponder()
        return true
        
    }
    
    
    override func endEditing(_ force: Bool) -> Bool {
        self.resignFirstResponder()
        return true
    }
    

    
}
