//
//  paymentAmountsTVC.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 10/20/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit

class paymentAmountsTVC: UITableViewController {

    var selectedIndexPath:IndexPath? = nil
    
    
    @IBOutlet var pmtChoicesTableView: UITableView!

    @IBOutlet weak var otherAmountField: formUITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        pmtChoicesTableView.tableFooterView = UIView()
        
        // Set navbar style
        let navbar = self.navigationController?.navigationBar
        navbar?.shadowImage = UIImage()
        navbar?.setBackgroundImage(UIImage(), for: .default)
        //        self.navigationController?.setNavigationBarHidden(false, animated: true)
        
        
        otherAmountField.keyboardType = UIKeyboardType.numberPad
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
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

        
//        if selectedIndexPath?.row == 2 {
//            performSegue(withIdentifier: "makeNewAccountSegue", sender: self)
//                }
        
    }
    
    
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
