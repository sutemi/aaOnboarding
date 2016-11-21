//
//  newAcctTypeTVC.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 10/20/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit

class newAcctTypeTVC: UITableViewController {

    
    @IBOutlet var typeTableView: UITableView!
    var selectedIndexPath:IndexPath? = nil
    
    
    let types = ["Personal checking", "Personal savings", "Business checking", "Business savings", "Money market"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        
        
        
        //--------------------------------------
    
        tableView.setEditing(true, animated: true)
    
        //--------------------------------------
        
        navigationController?.setNavigationBarHidden(false, animated: true)

        // Navbar
        
//        let navitem = self.navigationItem
//        let backItem = navitem.backBarButtonItem
//        self.navigationItem.title = "ADD A NEW BANK ACCOUNT"
//        backItem?.title = ""
//        backItem?.tintColor = UIColor.aaPrimaryBlue()
        
        
        //-----------
        
        typeTableView.tableFooterView = UIView()
        
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
    }
    
    
    override func viewDidDisappear(_ animated: Bool) {
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
   
    }
    
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }
    
    

    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
        return UITableViewCellEditingStyle(rawValue: 3)!
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch selectedIndexPath {
        case nil:
            selectedIndexPath = indexPath
            
        default:
            if selectedIndexPath == indexPath {
                selectedIndexPath = nil
                
            } else {
                self.typeTableView.deselectRow(at: selectedIndexPath!, animated: true)
                selectedIndexPath = indexPath
            }
        }
        
        
        UserManager.sharedManager.acctNewType = types[indexPath.row]
        
    }
    

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
