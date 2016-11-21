//
//  fullNameUIViewController.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 10/18/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit




class fullNameUIViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var tableViewHeightContraint: NSLayoutConstraint!
    let baseHeight: CGFloat = 260

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

    
    
    @IBOutlet weak var button: UIButton!
    let info = "WHY DO WE NEED THIS INFORMATION?"
//    let info = "WHY DO WE NEED THIS INFORMATION?    \u{2139}"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        button.setTitle(info, for: .normal)
        
//        tableViewHeightContraint.constant = baseHeight
        
        

        tableView.register(UINib(nibName:"fullNameUITableViewCell", bundle:nil), forCellReuseIdentifier: "cellFullName")
        tableView.register(UINib(nibName:"dobUITableViewCell", bundle:nil), forCellReuseIdentifier: "cellDOB")
        tableView.register(UINib(nibName:"relationshipUITableViewCell", bundle:nil), forCellReuseIdentifier: "cellRelationship")
        tableView.register(UINib(nibName:"citizenUITableViewCell", bundle:nil), forCellReuseIdentifier: "cellCitizen")
        tableView.register(UINib(nibName:"addressUITableViewCell", bundle:nil), forCellReuseIdentifier: "cellAddress")
        tableView.register(UINib(nibName:"cardDeliveryTableViewCell", bundle:nil), forCellReuseIdentifier: "cellDelivery")

        
        tableView.tableFooterView = UIView()
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: false)
        
        tableView.reloadData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellFullName") as! fullNameUITableViewCell
            
            if UserManager.sharedManager.userFullName.characters.count > 0 {
                cell.cellLabel.text = UserManager.sharedManager.userFullName
            }
            
            return cell
            
        } else if indexPath.row == 1 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellDOB") as! dobUITableViewCell
            
            if UserManager.sharedManager.userDOB.characters.count > 0 {
                cell.cellLabel.text = UserManager.sharedManager.userDOB
            }
            
            return cell
            
        } else if indexPath.row == 2 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellRelationship") as! relationshipUITableViewCell
            
            if UserManager.sharedManager.userRelation.characters.count > 0 {
                cell.cellLabel.text = UserManager.sharedManager.userRelation
            }
            
            return cell
            
        } else if indexPath.row == 3 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellCitizen") as! citizenUITableViewCell
            
            if UserManager.sharedManager.userCitizen.characters.count > 0 {
                cell.cellLabel.text = UserManager.sharedManager.userCitizen
            }
            
            cell.tapAction = { (cell) in
                self.selectCountryFromList()
            }
            
            return cell
            
        } else if indexPath.row == 4 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellAddress") as! addressUITableViewCell
            
            if UserManager.sharedManager.userAddress.characters.count > 0 {
                cell.cellLabel.text = UserManager.sharedManager.userAddress
            }
            
            return cell
            
        } else if indexPath.row == 5 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellDelivery") as! cardDeliveryTableViewCell
            
//            if UserManager.sharedManager.userDelivery {
//                cell.cellLabel.text = UserManager.sharedManager.userAddress
//            }
            
            return cell
            
        }
            
        else {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellAddress") as! addressUITableViewCell
            
            return cell
        }
    }
    
    
    
    func selectCountryFromList() {
        performSegue(withIdentifier: "countriesListSegue", sender: self)

    }

    
    
    
    
    // HEIGHT
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

      
        let indexVal:Int = indexPath.row

        
        switch indexVal {
            case 0:
                    minHeight = row0Min
                    maxHeight = row0Max
                
            case 1:
                    minHeight = row1Min
                    maxHeight = row1Max
                
            case 2:
                    minHeight = row2Min
                    maxHeight = row2Max
                
            case 3:
                    minHeight = row3Min
                    maxHeight = row3Max
                
            case 4:
                    minHeight = row4Min
                    maxHeight = row4Max
            
            case 5:
                minHeight = 100
                maxHeight = 100
            
            default: break
        }
        
        
//        print("RANGE \(indexVal): \(minHeight) - \(maxHeight)")
        
        
        if selectedIndexPath != nil {
            if indexPath == selectedIndexPath {
                return maxHeight
            } else {
                
                return minHeight
            }
            
        } else {
            return minHeight
        }
         
    }
    
    
    
    
    // SELECTED ROW
    
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

        
        if selectedIndexPath?.row == 2 {
            performSegue(withIdentifier: "showRelationshipSegue", sender: self)
        }
        else if selectedIndexPath?.row == 3 {
//            performSegue(withIdentifier: "countriesListSegue", sender: self)
        }
        
        

//        if selectedIndexPath == indexPath {
//            tableViewHeightContraint.constant = 600
//        } else {
//            switch indexPath.row {
//                case 0:
//                    tableViewHeightContraint.constant = 900
//                
//                case 1:
//                    tableViewHeightContraint.constant = 750
//                
//                case 2:
//                    tableViewHeightContraint.constant = 600
//                
//                case 3:
//                    tableViewHeightContraint.constant = 780
//                
//                case 4:
//                    tableViewHeightContraint.constant = 1020
//                
//                default:
//                    tableViewHeightContraint.constant = 600
//            }
//        }

        self.isFirstTimeLoading = false
    
        tableView.reloadRows(at: [indexPath], with: .automatic)
        
//        self.view.layoutIfNeeded()
        

    }
    

    
    
    override func didChange(_ changeKind: NSKeyValueChange, valuesAt indexes: IndexSet, forKey key: String) {
        
    }
    

    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

