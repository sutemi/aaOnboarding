//
//  btnBottomUIButton.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 10/19/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit

class btnBottomUIButton: UIButton {

    // Get the app's main bundle
    let mainBundle = Bundle.main
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        if self.isEnabled {
            self.setTitleColor(bcuxWhite, for: .normal)
            self.layer.cornerRadius = 0
            self.layer.backgroundColor = bcuxBlue.cgColor
            self.contentHorizontalAlignment = UIControlContentHorizontalAlignment.center
            self.titleLabel!.font =  UIFont(name: "System Bold", size: 17)
        } else {
            self.setTitleColor(bcuxWhite, for: .normal)
            self.layer.cornerRadius = 0
            self.layer.backgroundColor = bcuxBlue.cgColor
            self.contentHorizontalAlignment = UIControlContentHorizontalAlignment.center
            self.titleLabel!.font =  UIFont(name: "System Bold", size: 17)
        }
        
        
        
    }

}
