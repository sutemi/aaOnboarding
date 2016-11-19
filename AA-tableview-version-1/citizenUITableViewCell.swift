//
//  citizenUITableViewCell.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 10/19/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit



class citizenUITableViewCell: UITableViewCell {

    var tapAction: ((UITableViewCell) -> Void)?
    
    @IBOutlet weak var cellLabelHeight: NSLayoutConstraint!
    @IBOutlet weak var cellLabel: UILabel!
    
    @IBOutlet weak var switchNo: UISwitch!
    @IBOutlet weak var switchYes: UISwitch!

    
    @IBAction func switchedNo(_ sender:AnyObject) {
        if switchYes.isOn {
            switchYes.isOn = false
        } else {
            switchNo.isOn = true
        }
        tapAction!(self)
    }
    
    @IBAction func switchedYes(_ sender: AnyObject) {
        if switchNo.isOn {
            switchNo.isOn = false
        } else {
            
        }
        
        UserManager.sharedManager.userCitizen = "U.S. Citizen"
        cellLabel.text = UserManager.sharedManager.userCitizen
    }
    
    
    @IBOutlet weak var checkTestButton: UIButton!
    @IBAction func checkTest(_ sender: AnyObject) {
        
        print("IMAGE: \(checkTestButton.image(for: .normal))")
        
//        if checkTestButton.image(for: .normal) == UIImage(named: "bullet-open.png") {
//            if let image = UIImage(named: "bullet-closed.png") {
//                checkTestButton.setImage(image, for: .selected)
//            }
//        } else {
//            if let image = UIImage(named: "bullet-open.png") {
//                checkTestButton.setImage(image, for: .normal)
//            }
//        }
        
    }
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
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


    
    
    
}
