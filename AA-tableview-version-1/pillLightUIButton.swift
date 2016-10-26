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

        
        
        self.setTitleColor(UIColor.aaWhite(), for: .normal)
        self.setTitleColor(UIColor.aaWhite(), for: .disabled)
        
        self.setBackgroundImage(imageFromColor(color: UIColor.aaPrimaryBlue()), for: .normal)
        self.setBackgroundImage(imageFromColor(color: UIColor.aaLtGray()), for: .disabled)
        
        
        
        self.layer.cornerRadius = 4
        self.contentHorizontalAlignment = UIControlContentHorizontalAlignment.center
        self.titleLabel!.font =  UIFont(name: "System Bold", size: 15)
        
    }
    
    func imageFromColor(color: UIColor) -> UIImage {
        let rect = CGRect(x: 0, y: 0, width: 100, height: 100)
        //        let rect = CGRect(0, 0, 1, 1)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        context!.setFillColor(color.cgColor)
        context!.fill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
    

}
