//
//  BaseViewController.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 11/21/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import Foundation
import UIKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let backTitle = NSLocalizedString("", comment: "Back button label")
        self.addBackbutton(title: backTitle)
        
    }
    
}
