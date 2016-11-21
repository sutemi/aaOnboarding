//
//  newAccountDetailsVC.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 10/20/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit

class newAccountDetailsVC: UIViewController, UITableViewDataSource, UITableViewDelegate {


    
    @IBOutlet weak var tableView: UITableView!
    
    var selectedIndexPath:IndexPath? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.register(UINib(nibName:"routingTableViewCell", bundle:nil), forCellReuseIdentifier: "cellRouting")
        tableView.register(UINib(nibName:"accountTableViewCell", bundle:nil), forCellReuseIdentifier: "cellAccount")
        tableView.register(UINib(nibName:"reaccountTableViewCell", bundle:nil), forCellReuseIdentifier: "cellReAccount")
        tableView.register(UINib(nibName:"typeTableViewCell", bundle:nil), forCellReuseIdentifier: "cellType")
        tableView.register(UINib(nibName:"nicknameTableViewCell", bundle:nil), forCellReuseIdentifier: "cellNickname")
        
        tableView.tableFooterView = UIView()
        
        navigationController?.setNavigationBarHidden(false, animated: true)
        
        
        // Navbar
        
//        let navitem = self.navigationItem
//        let backItem = navitem.backBarButtonItem
//        backItem?.title = ""
//        backItem?.tintColor = UIColor.aaPrimaryBlue()
        
//        self.navigationController?.addBackbutton(title: "")
        
        //-----------
        
        
    }

    
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
        
    }
    
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        
//        self.navigationItem.backBarButtonItem?.title = ""
        
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellRouting") as! routingTableViewCell
            
            if UserManager.sharedManager.acctNewRouting.characters.count > 0 {
                cell.cellLabel.text = UserManager.sharedManager.acctNewRouting
            }
            
            return cell
            
        } else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellAccount") as! accountTableViewCell
            
            if UserManager.sharedManager.acctNewNumber.characters.count > 0 {
                cell.cellLabel.text = UserManager.sharedManager.acctNewNumber
            }
            
            return cell
            
        } else if indexPath.row == 2 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellReAccount") as! reaccountTableViewCell
            
            if UserManager.sharedManager.acctNewReNumber.characters.count > 0 {
                cell.cellLabel.text = UserManager.sharedManager.acctNewReNumber
            }
            
            return cell
            
        } else if indexPath.row == 3 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellType") as! typeTableViewCell
            
            if UserManager.sharedManager.acctNewType.characters.count > 0 {
                cell.cellLabel.text = UserManager.sharedManager.acctNewType
            }
            
            return cell
            
        } else if indexPath.row == 4 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellNickname") as! nicknameTableViewCell
            
            if UserManager.sharedManager.acctNewNickname.characters.count > 0 {
                cell.cellLabel.text = UserManager.sharedManager.acctNewNickname
            }
            
            return cell
            
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellType") as! typeTableViewCell
            return cell
        }
        
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        let index = indexPath
        var maxHeight:CGFloat!
        
        switch index.row {
        case 0:
            maxHeight = 120
            break
        case 1:
            maxHeight = 120
            break
        case 2:
            maxHeight = 120
            break
        case 3:
            maxHeight = 50
            break
        case 4:
            maxHeight = 120
            break
        default:
            maxHeight = 50
            break
        }
        
        if selectedIndexPath != nil {
            if index == selectedIndexPath {
                return maxHeight
            } else {
                return 50
            }
            
        } else {
            return 50
        }
        
        
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
        
//
//        Special button actions based on Index
//
        if selectedIndexPath?.row == 3 {
            performSegue(withIdentifier: "selectTypeSegue", sender: self)
        }
//        if selectedIndexPath?.row == 0 {
//            performSegue(withIdentifier: "addNewBankAccountSegue", sender: self)
//        } else if selectedIndexPath?.row == 3 {
//            performSegue(withIdentifier: "countriesListSegue", sender: self)
//        }
        
        tableView.reloadRows(at: [indexPath], with: .automatic)
        
        
    }
    
    
    @IBAction func unwindToAccountDetails(segue: UIStoryboardSegue) {}

    
    
    override func viewDidDisappear(_ animated: Bool) {
        
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }

    
  
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
