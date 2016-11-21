//
//  UIViewControllerExtension.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 11/21/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    func backButtonAction() {
        self.dismiss(animated: true, completion: nil)
    }
    
    func addBackbutton(title: String) {
        
        if let nav = self.navigationController,
            let item = nav.navigationBar.topItem {
            
            item.backBarButtonItem  = UIBarButtonItem(title: title, style: UIBarButtonItemStyle.plain, target: self, action:
                #selector(self.backButtonAction))
            
        } else {
            
            if let nav = self.navigationController,
                let _ = nav.navigationBar.backItem {
                
                self.navigationController!.navigationBar.backItem!.title = title
            }
        }
    }
}
