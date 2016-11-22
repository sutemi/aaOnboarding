//
//  bankAccountListTVC.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 10/20/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit

class bankAccountListTVC: UITableViewController {

    var selectedIndexPath:IndexPath? = nil
    
    
    
    @IBOutlet var whichAccountTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        whichAccountTableView.tableFooterView = UIView()
        
        //--------------------------------------
    
        tableView.setEditing(true, animated: true)
    
        //--------------------------------------
        
        
        // Navbar
        
//        let navitem = self.navigationItem
//        let backItem = navitem.backBarButtonItem
//        backItem?.title = ""
//        backItem?.tintColor = UIColor.aaPrimaryBlue()
        
        //-----------

        navigationController?.setNavigationBarHidden(false, animated: true)
        
        let backItem = UIBarButtonItem()
        backItem.title = ""
        navigationItem.backBarButtonItem = backItem
        
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        
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
                self.whichAccountTableView.deselectRow(at: selectedIndexPath!, animated: true)
                selectedIndexPath = indexPath
            }
        }
        
        if indexPath.row == 0 {
            UserManager.sharedManager.acctWhich = "Account 1"
        } else if indexPath.row == 1 {
            UserManager.sharedManager.acctWhich = "Account 2"
        }

        
    }
    
    
    override func viewDidDisappear(_ animated: Bool) {
        
        navigationController?.setNavigationBarHidden(false, animated: true)
        
    }

    
    override func viewWillDisappear(_ animated: Bool) {
        
    }
    

    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
        return UITableViewCellEditingStyle(rawValue: 3)!
    }
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        self.navigationItem.backBarButtonItem?.title = ""
    }
    
    
    
    @IBAction func unwindToAccountList(segue: UIStoryboardSegue) {}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
