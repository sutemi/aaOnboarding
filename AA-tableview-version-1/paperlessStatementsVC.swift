//
//  paperlessStatementsVC.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 10/24/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit

class paperlessStatementsVC: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var emailField: formUITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emailField.addTarget(self, action: #selector(endEditing), for: UIControlEvents.editingChanged)
        emailField.delegate = self
        
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(endEditing)))
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
         navigationController?.setNavigationBarHidden(true, animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true);
        return false;
    }

    
    
    
    func endEditing(_ force: Bool) -> Bool {
        self.resignFirstResponder()
        return true
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
