//
//  paymentAmountsTVC.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 10/20/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit

class paymentAmountsTVC: UITableViewController, UITextFieldDelegate {

    var selectedIndexPath:IndexPath? = nil
    
    
    @IBOutlet var pmtChoicesTableView: UITableView!

    @IBOutlet weak var otherAmountField: formUITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        otherAmountField.addTarget(self, action: #selector(textFieldDidChange), for: UIControlEvents.editingChanged)
        otherAmountField.delegate = self
        
        
        
        pmtChoicesTableView.tableFooterView = UIView()
        
        
        //--------------------------------------
    
        tableView.setEditing(true, animated: true)
    
        //--------------------------------------
        
        

        // Navbar
        
        let navitem = self.navigationItem
        let backItem = navitem.backBarButtonItem
        backItem?.title = ""
        backItem?.tintColor = UIColor.aaPrimaryBlue()
        
        //-----------
        
        

        navigationController?.setNavigationBarHidden(false, animated: true)
        
//        otherAmountField.keyboardType = UIKeyboardType.numberPad
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        switch selectedIndexPath {
        case nil:
            selectedIndexPath = indexPath
            
        default:
            if selectedIndexPath! == indexPath {
                selectedIndexPath = nil
                
            } else {
                self.pmtChoicesTableView.deselectRow(at: selectedIndexPath!, animated: true)
                selectedIndexPath = indexPath
            }
        }
        
        
        switch indexPath.row {
        case 0:
            UserManager.sharedManager.acctAmount = "Minimum payment due"
            otherAmountField.text = ""
        case 1:
            UserManager.sharedManager.acctAmount = "Statement balance"
            otherAmountField.text = ""
        default:
            break
        }
        
        otherAmountField.resignFirstResponder()
    
    }
    
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
        
        let backItem = UIBarButtonItem()
        backItem.title = ""
        navigationItem.backBarButtonItem = backItem
        
    }
    
    


    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
        
        if indexPath.row == 0 || indexPath.row == 1 {
            return UITableViewCellEditingStyle(rawValue: 3)!
        }
        
        return .none
       
    }
    
    
    
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        var row = NSIndexPath(row: 0, section: 0)
        self.pmtChoicesTableView.deselectRow(at: row as IndexPath, animated: true)
        
        row = NSIndexPath(row: 1, section: 0)
        self.pmtChoicesTableView.deselectRow(at: row as IndexPath, animated: true)
    }
    
    
    
    func textFieldDidChange(sender:formUITextField) {
        
        UserManager.sharedManager.acctAmount = "$" + otherAmountField.text!
 
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        UserManager.sharedManager.acctAmount = "$" + otherAmountField.text!
        
        textField.resignFirstResponder()
        return true
        
    }
    
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        self.resignFirstResponder()
    }
    
    
    
    
    
    
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    



}
