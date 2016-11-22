//
//  repeatPaymentsUIViewController.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 10/20/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit




class repeatPaymentsUIViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var selectedIndexPath:IndexPath? = nil
    
    
    
    var isFirstTimeLoading: Bool = true
    
    var maxHeight:CGFloat!
    var minHeight:CGFloat!
    
    let labelHeight:CGFloat = 10
    
    var row0Min:CGFloat = 50
    var row0Max:CGFloat = 300
    var row1Min:CGFloat = 50
    var row1Max:CGFloat = 150
    var row2Min:CGFloat = 50
    var row2Max:CGFloat = 70
    var row3Min:CGFloat = 50
    var row3Max:CGFloat = 170
    var row4Min:CGFloat = 50
    var row4Max:CGFloat = 420
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName:"whichAccountTableViewCell", bundle:nil), forCellReuseIdentifier: "cellWhichAccount")
        tableView.register(UINib(nibName:"amountTableViewCell", bundle:nil), forCellReuseIdentifier: "cellAmount")
        tableView.register(UINib(nibName:"paymentDateTableViewCell", bundle:nil), forCellReuseIdentifier: "cellDate")
        
        tableView.tableFooterView = UIView()
        
        navigationItem.hidesBackButton = true
        
        let backItem = UIBarButtonItem()
        backItem.title = ""
        navigationItem.backBarButtonItem = backItem
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.view.layoutIfNeeded()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: false)
        
        
        tableView.reloadData()
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellWhichAccount") as! whichAccountTableViewCell
            
            if UserManager.sharedManager.acctWhich.characters.count > 0 {
                cell.cellLabel.text = UserManager.sharedManager.acctWhich
            }
            
            return cell
            
        } else if indexPath.row == 1 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellAmount") as! amountTableViewCell
            
            if UserManager.sharedManager.acctAmount.characters.count > 0 {
                cell.cellLabel.text = UserManager.sharedManager.acctAmount
            }
            
            return cell
            
        } else if indexPath.row == 2 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellDate") as! paymentDateTableViewCell
            
            if UserManager.sharedManager.acctDate.characters.count > 0 {
                cell.cellLabel.text = UserManager.sharedManager.acctDate
            }
            
            return cell
            
        } else {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellDate") as! paymentDateTableViewCell
            
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        let indexVal:Int = indexPath.row
        
        
        switch indexVal {
//            case 0:
//                if UserManager.sharedManager.acctWhich.characters.count > 0 {
//                    return 70
//                } else {
//                    return 50
//                }
//                minHeight = row0Min
//                maxHeight = row0Max
            
//            case 1:
//                return 50
//                minHeight = row1Min
//                maxHeight = row1Max
//            
//            case 2:
//                return 50
//                minHeight = row2Min
//                maxHeight = row2Max
            
            default:
                return 50
        }
//
//        if selectedIndexPath != nil {
//            if indexPath == selectedIndexPath {
//                return maxHeight
//            } else {
//                return minHeight
//            }
//            
//        } else {
//            return minHeight
//        }
        
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
        
        if selectedIndexPath?.row == 0 {
            performSegue(withIdentifier: "fromWhichSegue", sender: self)
        } else if selectedIndexPath?.row == 1 {
            performSegue(withIdentifier: "amountSegue", sender: self)
        } else if selectedIndexPath?.row == 2 {
            performSegue(withIdentifier: "daysSegue", sender: self)
        }
        
        tableView.reloadRows(at: [indexPath], with: .automatic)
        
        
    }
    
    

    
    override func viewWillDisappear(_ animated: Bool) {
        let backItem = UIBarButtonItem()
        backItem.title = ""
        navigationItem.backBarButtonItem = backItem
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}


