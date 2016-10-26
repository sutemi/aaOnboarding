//
//  servicingAlertsVC.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 10/21/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit

class servicingAlertsVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!

    var selectedIndexPath:IndexPath? = nil
    var labels:Array = ["Payment due reminder", "Payment received", "Single transactions", "Approaching credit line", "Daily usage", "Daily spending", "Weekly snapshot", "Online statement available"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName:"servicingAlertTableViewCell", bundle:nil), forCellReuseIdentifier: "cellServicing")

        
        tableView.tableFooterView = UIView()
        

    }
    
    override func viewDidAppear(_ animated: Bool) {

    }
    
    override func viewWillAppear(_ animated: Bool) {
         navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellServicing") as! servicingAlertTableViewCell
        
        cell.cellLabel.text = self.labels[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
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
        
        performSegue(withIdentifier: "alertControlsSegue", sender: self)
        
        tableView.reloadRows(at: [indexPath], with: .automatic)
        
        
    }
    
   

    
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
        
        let backItem = UIBarButtonItem()
        backItem.title = ""
        navigationItem.backBarButtonItem = backItem
        
    }
    

    
    //    @IBAction func unwindToRepeatPayments(segue: UIStoryboardSegue) {}
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}
