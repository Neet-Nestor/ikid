//
//  ViewController.swift
//  iKid
//
//  Created by Student User on 11/1/17.
//  Copyright © 2017 Nestor Qin. All rights reserved.
//

import UIKit

class MasterViewController: UITabBarController {

    fileprivate var goodVC: GoodViewController!
    fileprivate var punVC: PunViewController!
    fileprivate var dadVC: DadViewController!
    fileprivate var curVC: UIViewController!
    
    /*
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        UIView.beginAnimations("View Flip", context: nil)
        UIView.setAnimationDuration(0.4)
        UIView.setAnimationCurve(.easeInOut)
        if item.title == "Good" {
            goodBuilder()
            if goodVC == nil ||
                goodVC?.view.superview == nil {
                UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
                goodVC.view.frame = view.frame
                switchViewController(curVC, to: goodVC)
                curVC = goodVC
            }
        } else if item.title == "Pun" {
            punBuilder()
            if punVC == nil ||
                punVC?.view.superview == nil {
                UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
                punVC.view.frame = view.frame
                switchViewController(curVC, to: punVC)
                curVC = punVC
            }
        } else { 
            dadBuilder()
            if dadVC == nil ||
                dadVC?.view.superview == nil {
                UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
                dadVC.view.frame = view.frame
                switchViewController(curVC, to: dadVC)
                curVC = dadVC
            }
        }
        UIView.commitAnimations()
    }
     
    @IBAction func switchViews(_ sender: UIBarButtonItem) {
        secondBuilder()
        firstBuilder()
        
        UIView.beginAnimations("View Flip", context: nil)
        UIView.setAnimationDuration(0.4)
        UIView.setAnimationCurve(.easeInOut)
        
        if firstViewController != nil &&
            firstViewController?.view.superview != nil {
            UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
            secondViewController.view.frame = view.frame
            switchViewController(firstViewController, to: secondViewController)
        }
        else {
            UIView.setAnimationTransition(.flipFromLeft, for: view, cache: true)
            firstViewController.view.frame = view.frame
            switchViewController(secondViewController, to: firstViewController)
        }
        UIView.commitAnimations()
    }
    */
    /*
    fileprivate func goodBuilder() {
        if goodVC == nil {
            goodVC =
                storyboard?
                    .instantiateViewController(withIdentifier: "Good")
                as! GoodViewController
        }
    }
    
    fileprivate func punBuilder() {
        if punVC == nil {
            punVC =
                storyboard?
                    .instantiateViewController(withIdentifier: "Pun")
                as! PunViewController
        }
    }
    
    fileprivate func dadBuilder() {
        if dadVC == nil {
            dadVC =
                storyboard?
                    .instantiateViewController(withIdentifier: "Dad")
                as! DadViewController
        }
    }
    */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

