//
//  ficoSettingsVC.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 10/26/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit

class ficoSettingsVC: UIViewController {

    
    @IBOutlet weak var caption1: UILabel!
    @IBOutlet weak var caption2: UILabel!
    @IBOutlet weak var caption3: UILabel!
    @IBOutlet weak var caption4: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        caption1.setLineSpacing(sender: self.caption1, amt: 4.0, align: "left")
        caption2.setLineSpacing(sender: self.caption2, amt: 4.0, align: "left")
        caption3.setLineSpacing(sender: self.caption3, amt: 4.0, align: "left")
        caption4.setLineSpacing(sender: self.caption4, amt: 4.0, align: "left")
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
