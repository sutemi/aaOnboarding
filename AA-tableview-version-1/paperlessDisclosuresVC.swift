//
//  paperlessDisclosuresVC.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 10/24/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit

class paperlessDisclosuresVC: UIViewController {
    

    @IBOutlet weak var textView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        // Navbar
        
        let navitem = self.navigationItem
        let backItem = navitem.backBarButtonItem
        backItem?.title = ""
        backItem?.tintColor = UIColor.aaPrimaryBlue()
        
        //-----------
        
        
        navigationController?.setNavigationBarHidden(false, animated: true)

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
    }
    

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        textView.setContentOffset(CGPoint.zero, animated: false)
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
