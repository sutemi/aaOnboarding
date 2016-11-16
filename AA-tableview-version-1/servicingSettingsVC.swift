//
//  servicingSettingsVC.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 11/10/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit

class servicingSettingsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


        
        // Navbar
        
        let navitem = self.navigationItem
        let backItem = navitem.backBarButtonItem
        backItem?.title = ""
        backItem?.tintColor = UIColor.aaPrimaryBlue()
        
        //-----------
        
        
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
