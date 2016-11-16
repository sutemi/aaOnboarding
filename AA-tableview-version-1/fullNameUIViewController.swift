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

    var selectedIndexPath:IndexPath? = nil
    
    var isFirstTimeLoading: Bool = true
    var maxHeight:CGFloat!
    var minHeight:CGFloat!
    
    let labelHeight:CGFloat = 20
    
    var row0Min:CGFloat = 50
    var row0Max:CGFloat = 273
    var row1Min:CGFloat = 50
    var row1Max:CGFloat = 120
    var row2Min:CGFloat = 50
    var row2Max:CGFloat = 50
    var row3Min:CGFloat = 50
    var row3Max:CGFloat = 140
    var row4Min:CGFloat = 50
    var row4Max:CGFloat = 384

    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UINib(nibName:"fullNameUITableViewCell", bundle:nil), forCellReuseIdentifier: "cellFullName")
        tableView.register(UINib(nibName:"dobUITableViewCell", bundle:nil), forCellReuseIdentifier: "cellDOB")
        tableView.register(UINib(nibName:"relationshipUITableViewCell", bundle:nil), forCellReuseIdentifier: "cellRelationship")
        tableView.register(UINib(nibName:"citizenUITableViewCell", bundle:nil), forCellReuseIdentifier: "cellCitizen")
        tableView.register(UINib(nibName:"addressUITableViewCell", bundle:nil), forCellReuseIdentifier: "cellAddress")
        
        tableView.tableFooterView = UIView()
        

    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewDidAppear(_ animated: Bool) {
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellFullName") as! fullNameUITableViewCell
            return cell
        } else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellDOB") as! dobUITableViewCell
            return cell
        } else if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellRelationship") as! relationshipUITableViewCell
            return cell
        } else if indexPath.row == 3 {
            
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellCitizen") as! citizenUITableViewCell
            
            cell.tapAction = { (cell) in
                self.selectCountryFromList()
            }
            
            return cell
        } else if indexPath.row == 4 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellAddress") as! addressUITableViewCell
            return cell
        } else {
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
                
            default: break
        }
        
        
        print("height range \(indexVal): \(minHeight) - \(maxHeight)")
        
        
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
        
        
        

            
        switch indexPath.row {
            case 0:
                let cell = tableView.cellForRow(at: indexPath) as! fullNameUITableViewCell
                if cell.cellLabel.text == "" {
                    cell.cellLabelHeight.constant = 0
                    row0Min = 50
                    row0Max = 273
                } else {
                    cell.cellLabel.isHidden = false
                    cell.cellLabelHeight.constant = labelHeight
                    row0Min = row0Min + labelHeight
                    row0Max = row0Max + labelHeight
                }
                
            case 1:
                let cell = tableView.cellForRow(at: indexPath) as! dobUITableViewCell
                if cell.cellLabel.text == "" {
                    cell.cellLabelHeight.constant = 0
                    row1Min = 50
                    row1Max = 120
                } else {
                    cell.cellLabel.isHidden = false
                    cell.cellLabelHeight.constant = labelHeight
                    row1Min = row1Min + labelHeight
                    row1Max = row1Max + labelHeight
                }
                
            case 2:
                let cell = tableView.cellForRow(at: indexPath) as! relationshipUITableViewCell
                if cell.cellLabel.text == "" {
                    cell.cellLabelHeight.constant = 0
                    row2Min = 50
                    row2Max = 50
                } else {
                    cell.cellLabel.isHidden = false
                    cell.cellLabelHeight.constant = labelHeight
                    row2Min = row2Min + labelHeight
                    row2Max = row2Max + labelHeight
                }
                
            case 3:
                let cell = tableView.cellForRow(at: indexPath) as! citizenUITableViewCell
                if cell.cellLabel.text == "" {
                    cell.cellLabelHeight.constant = 0
                    row3Min = 50
                    row3Max = 140
                } else {
                    cell.cellLabel.isHidden = false
                    cell.cellLabelHeight.constant = labelHeight
                    row3Min = row3Min + labelHeight
                    row3Max = row3Max + labelHeight
                }
                
            case 4:
                let cell = tableView.cellForRow(at: indexPath) as! addressUITableViewCell
                if cell.cellLabel.text == "" {
                    cell.cellLabelHeight.constant = 0
                    row4Min = 50
                    row4Max = 384
                } else {
                    cell.cellLabel.isHidden = false
                    cell.cellLabelHeight.constant = labelHeight
                    row4Min = row4Min + labelHeight
                    row4Max = row4Max + labelHeight
                }
                
            default: break
        }
        
        
        
        
        
        self.isFirstTimeLoading = false
    
        tableView.reloadRows(at: [indexPath], with: .automatic)
       
        

    }
    

    
    
    override func didChange(_ changeKind: NSKeyValueChange, valuesAt indexes: IndexSet, forKey key: String) {
        
    }
    

    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

