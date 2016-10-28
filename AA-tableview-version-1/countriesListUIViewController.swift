//
//  countriesListUIViewController.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 10/19/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit

class countriesListUIViewController: UIViewController {

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Set navbar style
        let navbar = self.navigationController?.navigationBar
        navbar?.shadowImage = UIImage()
        navbar?.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
        
//        switch selectedIndexPath {
//        case nil:
//            selectedIndexPath = indexPath
//        default:
//            if selectedIndexPath! == indexPath {
//                selectedIndexPath = nil
//            } else {
//                selectedIndexPath = indexPath
//            }
//        }

        
//        self.performSegue(withIdentifier: "countriesListSegue", sender: self)
        
//    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
