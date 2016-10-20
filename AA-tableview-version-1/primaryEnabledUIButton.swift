//
//  primaryEnabledUIButton.swift
//  AA-App
//
//  Created by James Wilson on 10/4/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit

let bcuxWhite: UIColor = UIColor(colorLiteralRed: 255/255, green: 255/255, blue: 255/255, alpha: 1.0)

let bcuxBlue: UIColor = UIColor(colorLiteralRed: 8/255, green: 93/255, blue: 169/255, alpha: 1.0)

let bcuxLtGray: UIColor = UIColor(colorLiteralRed: 244/255, green: 244/255, blue: 244/255, alpha: 1.0)

class primaryEnabledUIButton: UIButton {


    // Get the app's main bundle
    let mainBundle = Bundle.main
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.setTitleColor(bcuxWhite, for: .normal)
        self.layer.cornerRadius = 4
        self.layer.backgroundColor = bcuxBlue.cgColor
        self.contentHorizontalAlignment = UIControlContentHorizontalAlignment.center
        self.titleLabel!.font =  UIFont(name: "System Bold", size: 17)
        self.frame.size.height = 65
        self.frame.size.width = 285
        
    }
    
}
