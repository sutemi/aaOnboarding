//
//  addressUITableViewCell.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 10/19/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit

class addressUITableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var cellLabel: UILabel!
    
    @IBOutlet weak var streetField: formUITextField!
    @IBOutlet weak var zipField: formUITextField!
    @IBOutlet weak var cityField: formUITextField!
    @IBOutlet weak var stateField: formUITextField!
    
    @IBOutlet weak var cellLabelHeight: NSLayoutConstraint!
   
    
    
    var isComplete:Bool = true
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
        streetField.addTarget(self, action: #selector(textFieldDidChange), for: UIControlEvents.editingChanged)
        zipField.addTarget(self, action: #selector(textFieldDidChange), for: UIControlEvents.editingChanged)
        cityField.addTarget(self, action: #selector(textFieldDidChange), for: UIControlEvents.editingChanged)
        stateField.addTarget(self, action: #selector(textFieldDidChange), for: UIControlEvents.editingChanged)
        
        
        self.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
//        if cellLabel.text == "" {
//            cellLabel.isHidden = true
//        } else {
//            cellLabel.isHidden = false
//        }
        
    }
    
    
    func textFieldDidChange(sender:formUITextField) {
        if streetField.text != "" || cityField.text != "" || stateField.text != "" || zipField.text != "" {
            let labelText = "\(streetField.text!), \(cityField.text!), \(stateField.text!) \(zipField.text!)"
            cellLabel.text = labelText
        } else {
            cellLabel.text = ""
        }
    }
    
}
