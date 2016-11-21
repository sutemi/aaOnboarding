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
    
    // ADD AUTHORIZED USER
    // --------------------------
    
    var userFullName: String = ""
    var userDOB: String = ""
    var userRelation: String = ""
    var userCitizen: String = ""
    var userAddress: String = ""
    var userDelivery: Bool = false
    
    // ADD BANK ACCOUNT
    // --------------------------
    
    var acctWhich: String = ""
    var acctAmount: String = ""
    var acctDate: String = ""
    
    //      NEW BANK ACCOUNT
    var acctNewRouting: String = ""
    var acctNewNumber: String = ""
    var acctNewReNumber: String = ""
    var acctNewType: String = ""
    var acctNewNickname: String = ""
    
    // ACCOUNT SERVICING ALERTS
    // --------------------------
    
    var acctServicingLabel: String = "john.doe@email.com\n000-000-0000"
    var acctServicingLabel1: String = ""
    var acctServicingLabel2: String = ""
    var acctServicingLabel3: String = ""
    var acctServicingLabel4: String = ""
    var acctServicingLabel5: String = ""
    var acctServicingLabel6: String = ""
    var acctServicingLabel7: String = ""
    var acctServicingLabel8: String = ""
    
}
