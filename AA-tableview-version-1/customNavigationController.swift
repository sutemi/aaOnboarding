//
//  customNavigationController.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 10/25/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit

class customNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
//        let navitem = self.navigationItem
//        let backItem = navitem.backBarButtonItem
//        backItem?.title = ""
//        backItem?.tintColor = UIColor.aaPrimaryBlue()
        

    }
    
    
    override func viewWillAppear(_ animated: Bool) {
//        self.prepareForDisplay()
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
