//
//  splashSixVC.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 10/28/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit

class splashSixVC: UIViewController {

    
    
    @IBOutlet weak var caption: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        caption.setLineSpacing(sender: self.caption, amt: 4.0, align: "center")
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
