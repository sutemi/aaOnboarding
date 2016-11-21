//
//  ViewController.swift
//  AA-tableview-version-1
//
//  Created by James Wilson on 10/18/16.
//  Copyright © 2016 James Wilson. All rights reserved.
//

import UIKit


//extension MainViewController:autoAdvancePageDelegate {
//    func goToNextPage() {
//        nextIndex += 1
//        
//        pageViewController.setViewControllers([viewControllerAtIndex(index: nextIndex)!], direction: .forward, animated: true, completion: nil)
//    }
//}




class MainViewController: UIViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {

    // Global variables container
    //
    struct globalVariables {
        static var wholeName: [String:String] = ["firstName":"James"]
    }
    
    
    
    
    var nextIndex:Int = 0
    

    
    // Page view controller slides
    //
    var pageViewController: UIPageViewController!
    let pages = ["finishConfigViewController", "addUserViewController", "repeatPaymentsViewController", "fraudAlertsViewController", "serviceAlertsViewController", "paperlessStatementsViewController", "touchIDViewController", "ficoViewController"]
    
    
    
    // MARK: Page View Controller Data Source
    
    // REVERSE
    func pageViewController(_ pageViewController: UIPageViewController,
                            viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        
        if let index = pages.index(of: viewController.restorationIdentifier!) {
            if index > 0 {
                nextIndex = index - 1
                return viewControllerAtIndex(index: nextIndex)
            }
        }
        
        return nil
    }
    
    
    // FORWARD
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        
        if let index = pages.index(of: viewController.restorationIdentifier!) {
            if index < pages.count - 1 {
                nextIndex = index + 1
                return viewControllerAtIndex(index: nextIndex)
            }
        }
        
        return nil
    }
    
    
    
    
    // GET PAGE FROM ARRAY
    func viewControllerAtIndex(index:Int) -> UIViewController? {
        let vc = storyboard?.instantiateViewController(withIdentifier: pages[index])
        nextIndex = index
        return vc
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("RECEIVED: \(nextIndex)")
        

        
        
        
        if let vc = storyboard?.instantiateViewController(withIdentifier: "onboardingPageViewController") {
            
            self.addChildViewController(vc)
            self.view.addSubview(vc.view)
            
            
            pageViewController = vc as! UIPageViewController
            pageViewController.dataSource = self
            pageViewController.delegate = self
            
            pageViewController.setViewControllers([viewControllerAtIndex(index: self.nextIndex)!], direction: .forward, animated: true, completion: nil)
            
            pageViewController.didMove(toParentViewController: self)
            
        }
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    
    
    func nextPageWithIndex(index:Int) {
        nextIndex = index
        pageViewController.setViewControllers([viewControllerAtIndex(index: self.nextIndex)!], direction: .forward, animated: true, completion: nil)
        
        pageViewController.didMove(toParentViewController: self)
    }
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

