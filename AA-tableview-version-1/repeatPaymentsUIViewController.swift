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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName:"whichAccountTableViewCell", bundle:nil), forCellReuseIdentifier: "cellWhichAccount")
        tableView.register(UINib(nibName:"amountTableViewCell", bundle:nil), forCellReuseIdentifier: "cellAmount")
        tableView.register(UINib(nibName:"paymentDateTableViewCell", bundle:nil), forCellReuseIdentifier: "cellDate")
        
        tableView.tableFooterView = UIView()
        
        
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
    
    }
    
    override func viewWillAppear(_ animated: Bool) {
         navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellWhichAccount") as! whichAccountTableViewCell
            return cell
        } else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellAmount") as! amountTableViewCell
            return cell
        } else if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellDate") as! paymentDateTableViewCell
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellAddress") as! addressUITableViewCell
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        let index = indexPath
        var maxHeight:CGFloat!
        
        switch index.row {
        case 0:
            maxHeight = 50
            break
        case 1:
            maxHeight = 50
            break
        case 2:
            maxHeight = 50
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
        
        if selectedIndexPath?.row == 0 {
            performSegue(withIdentifier: "fromWhichSegue", sender: self)
        } else if selectedIndexPath?.row == 1 {
            performSegue(withIdentifier: "amountSegue", sender: self)
        } else if selectedIndexPath?.row == 2 {
            performSegue(withIdentifier: "daysSegue", sender: self)
        }
        
        tableView.reloadRows(at: [indexPath], with: .automatic)
        
        
    }
    
    

    
    
    
    
    
    
    
    
    
//    @IBAction func unwindToRepeatPayments(segue: UIStoryboardSegue) {}
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}


