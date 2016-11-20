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
        
        tableView.reloadData()
    }
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellServicing") as! servicingAlertTableViewCell
        
        cell.cellTitle.text = self.labels[indexPath.row]
        
        switch indexPath.row {
        case 0:
            
            if UserManager.sharedManager.acctServicingLabel1.characters.count > 0 {
                UserManager.sharedManager.acctServicingLabel1 = UserManager.sharedManager.acctServicingLabel
                cell.cellLabel.text = UserManager.sharedManager.acctServicingLabel1
            }
            
        case 1:
            
            if UserManager.sharedManager.acctServicingLabel2.characters.count > 0 {
                UserManager.sharedManager.acctServicingLabel2 = UserManager.sharedManager.acctServicingLabel
                cell.cellLabel.text = UserManager.sharedManager.acctServicingLabel2
            }
            
        case 2:
            
            if UserManager.sharedManager.acctServicingLabel3.characters.count > 0 {
                UserManager.sharedManager.acctServicingLabel3 = UserManager.sharedManager.acctServicingLabel
                cell.cellLabel.text = UserManager.sharedManager.acctServicingLabel3
            }
            
        case 3:
            
            if UserManager.sharedManager.acctServicingLabel4.characters.count > 0 {
                UserManager.sharedManager.acctServicingLabel4 = UserManager.sharedManager.acctServicingLabel
                cell.cellLabel.text = UserManager.sharedManager.acctServicingLabel4
            }
            
        case 4:
            
            if UserManager.sharedManager.acctServicingLabel5.characters.count > 0 {
                UserManager.sharedManager.acctServicingLabel5 = UserManager.sharedManager.acctServicingLabel
                cell.cellLabel.text = UserManager.sharedManager.acctServicingLabel5
            }
            
        case 5:
            
            if UserManager.sharedManager.acctServicingLabel6.characters.count > 0 {
                UserManager.sharedManager.acctServicingLabel6 = UserManager.sharedManager.acctServicingLabel
                cell.cellLabel.text = UserManager.sharedManager.acctServicingLabel6
            }
            
        case 6:
            
            if UserManager.sharedManager.acctServicingLabel7.characters.count > 0 {
                UserManager.sharedManager.acctServicingLabel7 = UserManager.sharedManager.acctServicingLabel
                cell.cellLabel.text = UserManager.sharedManager.acctServicingLabel7
            }
            
        case 7:
            
            if UserManager.sharedManager.acctServicingLabel8.characters.count > 0 {
                UserManager.sharedManager.acctServicingLabel8 = UserManager.sharedManager.acctServicingLabel
                cell.cellLabel.text = UserManager.sharedManager.acctServicingLabel8
            }
            
        default:
            let cell = tableView.cellForRow(at: indexPath) as! servicingAlertTableViewCell
            cell.cellLabel.text = UserManager.sharedManager.acctServicingLabel
        }
        
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
        
        switch indexPath.row {
        case 0:
            let cell = tableView.cellForRow(at: indexPath) as! servicingAlertTableViewCell
            UserManager.sharedManager.acctServicingLabel1 = UserManager.sharedManager.acctServicingLabel
            cell.cellLabel.text = UserManager.sharedManager.acctServicingLabel1
        case 1:
            let cell = tableView.cellForRow(at: indexPath) as! servicingAlertTableViewCell
            UserManager.sharedManager.acctServicingLabel2 = UserManager.sharedManager.acctServicingLabel
            cell.cellLabel.text = UserManager.sharedManager.acctServicingLabel1
        case 2:
            let cell = tableView.cellForRow(at: indexPath) as! servicingAlertTableViewCell
            UserManager.sharedManager.acctServicingLabel3 = UserManager.sharedManager.acctServicingLabel
            cell.cellLabel.text = UserManager.sharedManager.acctServicingLabel1
        case 3:
            let cell = tableView.cellForRow(at: indexPath) as! servicingAlertTableViewCell
            UserManager.sharedManager.acctServicingLabel4 = UserManager.sharedManager.acctServicingLabel
            cell.cellLabel.text = UserManager.sharedManager.acctServicingLabel1
        case 4:
            let cell = tableView.cellForRow(at: indexPath) as! servicingAlertTableViewCell
            UserManager.sharedManager.acctServicingLabel5 = UserManager.sharedManager.acctServicingLabel
            cell.cellLabel.text = UserManager.sharedManager.acctServicingLabel1
        case 5:
            let cell = tableView.cellForRow(at: indexPath) as! servicingAlertTableViewCell
            UserManager.sharedManager.acctServicingLabel6 = UserManager.sharedManager.acctServicingLabel
            cell.cellLabel.text = UserManager.sharedManager.acctServicingLabel1
        case 6:
            let cell = tableView.cellForRow(at: indexPath) as! servicingAlertTableViewCell
            UserManager.sharedManager.acctServicingLabel7 = UserManager.sharedManager.acctServicingLabel
            cell.cellLabel.text = UserManager.sharedManager.acctServicingLabel1
        case 7:
            let cell = tableView.cellForRow(at: indexPath) as! servicingAlertTableViewCell
            UserManager.sharedManager.acctServicingLabel8 = UserManager.sharedManager.acctServicingLabel
            cell.cellLabel.text = UserManager.sharedManager.acctServicingLabel1
        default:
            let cell = tableView.cellForRow(at: indexPath) as! servicingAlertTableViewCell
            cell.cellLabel.text = UserManager.sharedManager.acctServicingLabel
        }
        
        
        
//        let cell = tableView.cellForRow(at: indexPath) as! servicingAlertTableViewCell
//        cell.cellLabel.text = UserManager.sharedManager.acctServicingLabel
        
        
        performSegue(withIdentifier: "alertControlsSegue", sender: self)
        
        tableView.reloadRows(at: [indexPath], with: .automatic)
        
        
    }
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        
        switch indexPath.row {
        case 0:
            
            if UserManager.sharedManager.acctServicingLabel1.characters.count > 0 {
                return 70
            } else {
                return 50
            }
            
        case 1:
            
            if UserManager.sharedManager.acctServicingLabel2.characters.count > 0 {
                return 70
            } else {
                return 50
            }
            
        case 2:
            
            if UserManager.sharedManager.acctServicingLabel3.characters.count > 0 {
                return 70
            } else {
                return 50
            }
            
        case 3:
            
            if UserManager.sharedManager.acctServicingLabel4.characters.count > 0 {
                return 70
            } else {
                return 50
            }
            
        case 4:
            
            if UserManager.sharedManager.acctServicingLabel5.characters.count > 0 {
                return 70
            } else {
                return 50
            }
            
        case 5:
            
            if UserManager.sharedManager.acctServicingLabel6.characters.count > 0 {
                return 70
            } else {
                return 50
            }
            
        case 6:
            
            if UserManager.sharedManager.acctServicingLabel7.characters.count > 0 {
                return 70
            } else {
                return 50
            }
            
        case 7:
            
            if UserManager.sharedManager.acctServicingLabel8.characters.count > 0 {
                return 70
            } else {
                return 50
            }
            
        default:
            return 50
        }
    }
   

    
    
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        navigationController?.setNavigationBarHidden(false, animated: true)
//        
//        let backItem = UIBarButtonItem()
//        backItem.title = ""
//        navigationItem.backBarButtonItem = backItem
//        
//    }
    

    
    //    @IBAction func unwindToRepeatPayments(segue: UIStoryboardSegue) {}
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}
