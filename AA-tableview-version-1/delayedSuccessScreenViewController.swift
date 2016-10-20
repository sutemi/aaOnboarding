//
//  delayedSuccessScreenViewController.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 10/19/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit








class delayedSuccessScreenViewController: UIViewController, delayedSuccessVCDelegate {

    @IBInspectable var nextSegueID:String = ""
    @IBInspectable var nextSectionIndex:Int?
    
    var delegate: delayedSuccessVCDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Set navbar style
        let navbar = self.navigationController?.navigationBar
        navbar?.shadowImage = UIImage()
        navbar?.setBackgroundImage(UIImage(), for: .default)
        
        navigationController?.setNavigationBarHidden(true, animated: false)

        self.delegate = self
        
        
        let when = DispatchTime.now() + 3 // change 2 to desired number of seconds
        
        DispatchQueue.main.asyncAfter(deadline: when) {
            // Your code with delay
            let storyboard = UIStoryboard(name: "Main", bundle: nil)

            
            //////
            
            _ = self.viewControllerAtIndex(index: self.nextSectionIndex!)
            
            /////
            
            
            let controller = storyboard.instantiateViewController(withIdentifier: self.nextSegueID) 
            self.present(controller, animated: true, completion: nil)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    func viewControllerAtIndex(index:Int) -> UIViewController? {
        return delegate?.viewControllerAtIndex(index: index)
    }
    


}
