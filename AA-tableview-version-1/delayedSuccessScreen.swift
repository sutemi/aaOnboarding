//
//  delayedSuccessScreenViewController.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 10/19/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit



protocol autoAdvancePageDelegate {
    
    func goToNextPage()

}



class delayedSuccessScreen: UIViewController, UIPageViewControllerDelegate {

    @IBInspectable var nextPageIndex:Int = 0
    
    
    var delegate:autoAdvancePageDelegate?
    var segueID:String = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("MY RESTORATION ID: \(self.restorationIdentifier)")
        let rID:String = self.restorationIdentifier!
        
        switch rID {
        case "successAddUser":
            segueID = "segueToRepeatPayments"
        case "successRepeatPayments":
            segueID = "segueToFraudAlerts"
        case "successFraudAlerts":
            segueID = "segueToServiceAlerts"
        case "successServiceAlerts":
            segueID = "segueToPaperless"
        case "successPaperless":
            segueID = "segueToTouchID"
        case "successTouchID":
            segueID = "segueToFICO"
        case "successFICO":
            segueID = "segueToCOMPLETE"
        default:
            segueID = "segueToCOMPLETE"
        }
        
        
        
        let when = DispatchTime.now() + 3 // change to desired number of seconds
        
        DispatchQueue.main.asyncAfter(deadline: when) {
            
            //////
            self.delegate?.goToNextPage()
            self.performSegue(withIdentifier: self.segueID, sender: self.nextPageIndex)
            
            /////

        }
        
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let mainVC = segue.destination as! MainViewController
        mainVC.nextIndex = sender as! Int
//        print("SENDING: \(sender)")
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: false)

    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    


}
