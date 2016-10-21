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
        
        // Set navbar style
        let navbar = self.navigationController?.navigationBar
        navbar?.shadowImage = UIImage()
        navbar?.setBackgroundImage(UIImage(), for: .default)
        
        navigationController?.setNavigationBarHidden(false, animated: false)
    }

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellRouting") as! routingTableViewCell
            return cell
        } else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellAccount") as! accountTableViewCell
            return cell
        } else if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellReAccount") as! reaccountTableViewCell
            return cell
        } else if indexPath.row == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellType") as! typeTableViewCell
            return cell
        } else if indexPath.row == 4 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellNickname") as! nicknameTableViewCell
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
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
        
        let backItem = UIBarButtonItem()
        backItem.title = ""
        navigationItem.backBarButtonItem = backItem
        
    }

    
  
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
