//
//  DadViewController.swift
//  iKid
//
//  Created by Student User on 11/1/17.
//  Copyright © 2017 Nestor Qin. All rights reserved.
//

import UIKit

class DadViewController: UIViewController {
    
    @IBOutlet weak var nextBtn: UIButton!
    // {{## BEGIN fields ##}}
    fileprivate var firstViewController : DadViewController1!
    fileprivate var secondViewController : DadViewController2!
    // {{## END fields ##}}
    
    @IBAction func switchViews(_ sender: UIButton) {
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
            sender.setTitle("Back", for: .normal)
        }
        else {
            UIView.setAnimationTransition(.flipFromLeft, for: view, cache: true)
            firstViewController.view.frame = view.frame
            switchViewController(secondViewController, to: firstViewController)
            sender.setTitle("Next", for: .normal)
        }
        UIView.commitAnimations()
    }
    
    fileprivate func firstBuilder() {
        if firstViewController == nil {
            firstViewController =
                storyboard?
                    .instantiateViewController(withIdentifier: "Dad1")
                as! DadViewController1
        }
    }
    
    fileprivate func secondBuilder() {
        if secondViewController == nil {
            secondViewController =
                storyboard?
                    .instantiateViewController(withIdentifier: "Dad2")
                as! DadViewController2
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        firstBuilder()
        switchViewController(nil, to: firstViewController)
        nextBtn.layer.borderWidth = 1
        nextBtn.layer.borderColor = UIColor.black.cgColor
        nextBtn.layer.cornerRadius = 5
        nextBtn.layer.backgroundColor = UIColor.white.cgColor
        // Do any additional setup after loading the view.
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
