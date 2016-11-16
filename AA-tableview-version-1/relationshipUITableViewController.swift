//
//  relationshiopUIViewController.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 10/18/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit

class relationshipUITableViewController: UITableViewController {


    
    @IBOutlet var relationTableView: UITableView!
    
    var selectedIndexPath:IndexPath? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        relationTableView.tableFooterView = UIView()
        
        
        // Navbar
        
        let navitem = self.navigationItem
        let backItem = navitem.backBarButtonItem
        backItem?.title = ""
        backItem?.tintColor = UIColor.aaPrimaryBlue()
        
        //-----------
        
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        
        
        //--------------------------------------
        
        tableView.setEditing(true, animated: true)
        
        //--------------------------------------
        
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
    }
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        switch selectedIndexPath {
            case nil:
                selectedIndexPath = indexPath
            
            default:
                if selectedIndexPath! == indexPath {
                    selectedIndexPath = nil
                    
                } else {
                    self.relationTableView.deselectRow(at: selectedIndexPath!, animated: true)
                    selectedIndexPath = indexPath
                }
        }
 
    }
        

    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
        return UITableViewCellEditingStyle(rawValue: 3)!
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
