//
//  paymentDaysTVC.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 10/20/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit

class paymentDaysTVC: UITableViewController {

    var selectedIndexPath:IndexPath? = nil
    
    
    @IBOutlet var daysTableView: UITableView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        daysTableView.tableFooterView = UIView()
        
        
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

    }
    
    override func viewDidAppear(_ animated: Bool) {
       
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    

    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
        
        let backItem = UIBarButtonItem()
        backItem.title = ""
        navigationItem.backBarButtonItem = backItem
        
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch selectedIndexPath {
        case nil:
            selectedIndexPath = indexPath
            
        default:
            if selectedIndexPath! == indexPath {
                selectedIndexPath = nil
                
            } else {
                self.daysTableView.deselectRow(at: selectedIndexPath!, animated: true)
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
