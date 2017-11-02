//
//  GoodViewController.swift
//  iKid
//
//  Created by Student User on 11/1/17.
//  Copyright © 2017 Nestor Qin. All rights reserved.
//

import UIKit

class GoodViewController: UIViewController {
    
    @IBOutlet weak var nextBtn: UIButton!
    // {{## BEGIN fields ##}}
    fileprivate var firstViewController : GoodViewController1!
    fileprivate var secondViewController : GoodViewController2!
    fileprivate var thirdViewController : GoodViewController3!
    fileprivate var fourthViewController : GoodViewController4!
    // {{## END fields ##}}
    
    // {{## BEGIN switch-with-animation ##}}
    @IBAction func switchViews(_ sender: UIButton) {
        secondBuilder()
        firstBuilder()
        thirdBuilder()
        fourthBuilder()
        
        UIView.beginAnimations("View Flip", context: nil)
        UIView.setAnimationDuration(0.4)
        UIView.setAnimationCurve(.easeInOut)
        
        if firstViewController != nil &&
            firstViewController?.view.superview != nil {
            UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
            secondViewController.view.frame = view.frame
            switchViewController(firstViewController, to: secondViewController)
        }
        else if (secondViewController != nil &&
            secondViewController?.view.superview != nil) {
            UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
            thirdViewController.view.frame = view.frame
            switchViewController(secondViewController, to: thirdViewController)
        }
        else if (thirdViewController != nil &&
            thirdViewController?.view.superview != nil) {
            UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
            thirdViewController.view.frame = view.frame
            sender.setTitle("Back", for: .normal)
            switchViewController(thirdViewController, to: fourthViewController)
        }
        else {
            UIView.setAnimationTransition(.flipFromLeft, for: view, cache: true)
            firstViewController.view.frame = view.frame
            sender.setTitle("Next", for: .normal)
            switchViewController(fourthViewController, to: firstViewController)
        }
        UIView.commitAnimations()
    }
    // {{## END switch-with-animation ##}}
    
    // {{## BEGIN builders ##}}
    fileprivate func firstBuilder() {
        if firstViewController == nil {
            firstViewController =
                storyboard?
                    .instantiateViewController(withIdentifier: "Good1")
                as! GoodViewController1
        }
    }
    
    fileprivate func secondBuilder() {
        if secondViewController == nil {
            secondViewController =
                storyboard?
                    .instantiateViewController(withIdentifier: "Good2")
                as! GoodViewController2
        }
    }
        
    fileprivate func thirdBuilder() {
        if thirdViewController == nil {
            thirdViewController =
                storyboard?
                    .instantiateViewController(withIdentifier: "Good3")
                as! GoodViewController3
        }
    }
    
    fileprivate func fourthBuilder() {
        if fourthViewController == nil {
            fourthViewController =
                storyboard?
                    .instantiateViewController(withIdentifier: "Good4")
                as! GoodViewController4
        }
    }
    // {{## END builders ##}}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        firstBuilder()
        switchViewController(nil, to: firstViewController)
        nextBtn.layer.borderWidth = 1
        nextBtn.layer.borderColor = UIColor.black.cgColor
        nextBtn.layer.cornerRadius = 5
        nextBtn.layer.backgroundColor = UIColor.white.cgColor
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
