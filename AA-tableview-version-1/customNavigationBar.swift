//
//  customNavigationBar.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 10/24/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import Foundation
import UIKit


extension UINavigationController {

    
    public func prepareForDisplay() {
        
        self.navigationBar.shadowImage = UIImage()
        self.navigationBar.setBackgroundImage(UIImage(), for: .default)
        
//        self.navigationItem.backBarButtonItem?.title = ""
//        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
    }
    
}

