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
//            
//            let myButton = pillLightUIButton(coder: classForCoder)
//            myButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
            
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellCitizen") as! citizenUITableViewCell
            
            cell.tapAction = { (cell) in
//                self.showAlertForRow(tableView.indexPath(for: cell)!.row)
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
    
//    func showAlertForRow(_ row: Int) {
//        let alert = UIAlertController(
//            title: "BEHOLD",
//            message: "Cell at row \(row) was tapped!",
//            preferredStyle: .alert)
//        alert.addAction(UIAlertAction(title: "Gotcha!", style: UIAlertActionStyle.default, handler: { (test) -> Void in
//            self.dismiss(animated: true, completion: nil)
//        }))
//        
//        self.present(
//            alert,
//            animated: true,
//            completion: nil)
//    }
    
    
    
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        let index = indexPath
        var maxHeight:CGFloat!
        
        
        
        switch index.row {
        case 0:
            maxHeight = 273
            break
        case 1:
            maxHeight = 120
            break
        case 2:
            maxHeight = 50
            break
        case 3:
            maxHeight = 140
            break
        case 4:
            maxHeight = 384
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
        
        if selectedIndexPath?.row == 2 {
            performSegue(withIdentifier: "showRelationshipSegue", sender: self)
        }
        else if selectedIndexPath?.row == 3 {
//            performSegue(withIdentifier: "countriesListSegue", sender: self)
        }
        
        tableView.reloadRows(at: [indexPath], with: .automatic)
        

    }
    
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
        
        let backItem = UIBarButtonItem()
        backItem.title = ""
        navigationItem.backBarButtonItem = backItem
        
    }
    
    
    override func didChange(_ changeKind: NSKeyValueChange, valuesAt indexes: IndexSet, forKey key: String) {
        
    }
    
    
    
    
    

//    @IBAction func unwindToAddUser(segue: UIStoryboardSegue) {}
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

