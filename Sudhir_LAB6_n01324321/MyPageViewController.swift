//
//  MyPageViewController.swift
//  Sudhir_LAB6_n01324321
//
//  Created by user165333 on 7/20/20.
//  Copyright © 2020 n01324321 Sudhir. All rights reserved.
//

import UIKit

class MyPageViewController: UIPageViewController, UIPageViewControllerDataSource ,UIPageViewControllerDelegate {
    
    
    
    lazy var subViewControllers:[UIViewController] =  {
        
        return [
        
            UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController,
            UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController,
            UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
        ]
        
    } ()
    

    override func viewDidLoad() {
        super.viewDidLoad()
      
        self.delegate = self
        self.dataSource = self
        
        setViewControllers([subViewControllers[0]], direction: .forward, animated: true, completion: nil)
        
    }
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return subViewControllers.count
    }
    
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        let currentIndex:Int = subViewControllers.index(of : viewController) ?? 0
        
        
        if(currentIndex <= 0) {
            
            return nil
        }
        
        return subViewControllers[currentIndex-1]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
         let currentIndex:Int = subViewControllers.index(of : viewController) ?? 0
        
        if(currentIndex >= subViewControllers.count-1) {
            
            return nil
        }
        
        return subViewControllers[currentIndex+1]
        
    }

}


