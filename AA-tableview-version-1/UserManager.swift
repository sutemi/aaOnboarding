//
//  UserManager.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 11/18/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit

class UserManager: NSObject {
    
    static let sharedManager = UserManager()
    
    var userFullName: String = ""
    var userDOB: String = ""
    var userRelation: String = ""
    var userCitizen: String = ""
    var userAddress: String = ""
    
}
