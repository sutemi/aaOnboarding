//
//  citizenUITableViewCell.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 10/19/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit



class citizenUITableViewCell: UITableViewCell {

    
    @IBOutlet weak var citizenLabel: UILabel!

    var tapAction: ((UITableViewCell) -> Void)?
    

    
    @IBAction func choseNotCitizen(_ sender: AnyObject) {
        tapAction!(self)
    }
    
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        if citizenLabel.text == "" {
            citizenLabel.isHidden = true
        } else {
            citizenLabel.isHidden = false
        }
    }


    
    
    
}
