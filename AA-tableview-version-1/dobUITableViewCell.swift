//
//  dobTableViewCell.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 10/18/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit

class dobUITableViewCell: UITableViewCell {

    

    @IBOutlet weak var cellLabel: UILabel!
    @IBOutlet weak var cellLabelHeight: NSLayoutConstraint!
    

    @IBOutlet weak var dobField: formUITextField!
    
    var isComplete:Bool = false
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        dobField.addTarget(self, action: #selector(textFieldDidChange), for: UIControlEvents.editingChanged)
        
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
        if dobField.text != "" {
            let labelText = "\(dobField.text!)"
            cellLabel.text = labelText
        } else {
            cellLabel.text = ""
        }
    }
    
    
}
