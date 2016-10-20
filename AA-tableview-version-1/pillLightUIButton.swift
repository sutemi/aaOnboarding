//
//  pillLightUIButton.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 10/19/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit

class pillLightUIButton: UIButton {

    // Get the app's main bundle
    let mainBundle = Bundle.main
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.setTitleColor(bcuxBlue, for: .normal)
        self.layer.cornerRadius = 4
        self.layer.backgroundColor = bcuxLtGray.cgColor
        self.contentHorizontalAlignment = UIControlContentHorizontalAlignment.center
        self.titleLabel!.font =  UIFont(name: "System Bold", size: 15)
//        self.frame.size.height = 65
//        self.frame.size.width = 285
        
    }

}
