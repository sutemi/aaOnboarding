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
        
        // Set navbar style
        let navbar = self.navigationController?.navigationBar
        navbar?.shadowImage = UIImage()
        navbar?.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        
        
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
                    selectedIndexPath = indexPath
                }
            }
        
//        if let cell = tableView.cellForRow(at: indexPath) {
//            cell.accessoryType = .checkmark
//        }
        
        self.performSegue(withIdentifier: "showRelationshipSegue", sender: self)
 
    }
        

    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
