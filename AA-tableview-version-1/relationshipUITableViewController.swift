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
//        self.navigationItem.rightBarButtonItem = self.editButtonItem
        tableView.setEditing(true, animated: true)
        //--------------------------------------
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
 
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "relationship", for: indexPath)
        
        cell.tintColor = UIColor.aaPrimaryBlue()
        
        return cell
    }
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        switch selectedIndexPath {
            case nil:
                selectedIndexPath = indexPath
//                if let cell = tableView.cellForRow(at: indexPath) {
//                    cell.imageView?.image = UIImage(named: "bullet-selected")
//                }
            default:
                if selectedIndexPath! == indexPath {
                    selectedIndexPath = nil
//                    if let cell = tableView.cellForRow(at: indexPath) {
//                        cell.imageView?.image = UIImage(named: "bullet-open")
//                    }
                } else {
                    selectedIndexPath = indexPath
//                    if let cell = tableView.cellForRow(at: indexPath) {
//                        cell.imageView?.image = UIImage(named: "bullet-selected")
//                    }
                }
            }

        
//        if let cell = tableView.cellForRow(at: indexPath) {
//            cell.accessoryType = .checkmark
//        }
        
//        self.performSegue(withIdentifier: "showRelationshipSegue", sender: self)
 
    }
        

    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
        return UITableViewCellEditingStyle(rawValue: 3)!
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
