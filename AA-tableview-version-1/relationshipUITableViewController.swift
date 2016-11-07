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

        // Do any additional setup after loading the view.
        
        relationTableView.tableFooterView = UIView()
        
        
        
        
        //--------------------------------------
        
        tableView.setEditing(true, animated: true)
        
        //--------------------------------------
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
//        print("SELECTION MADE...")
//        print("PREVIOUSLY SELECTED: \(selectedIndexPath)")
        switch selectedIndexPath {
            case nil:
                selectedIndexPath = indexPath
            
            default:
                if selectedIndexPath! == indexPath {
//                    self.relationTableView.deselectRow(at: selectedIndexPath!, animated: true)
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
