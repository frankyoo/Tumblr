//
//  ViewController.swift
//  Tumblr
//
//  Created by Frank Yoo on 2/27/16.
//  Copyright © 2016 Frank Yoo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    @IBOutlet var buttons: [UIButton]!
    @IBOutlet weak var exploreImageView: UIImageView!
    
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    
    var viewControllers: [UIViewController]!
    var selectedIndex: Int = 0
    
    var fadeTransition: FadeTransition!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        UIView.animateWithDuration(1.5, delay: 0, options: [UIViewAnimationOptions.Autoreverse, UIViewAnimationOptions.Repeat], animations: { () -> Void in
            
                self.exploreImageView.transform = CGAffineTransformMakeTranslation(0, 5)
            
            }, completion: nil)
        
        
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("homeTabID")
        
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("searchTabID")
        
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("accountTabID")
        
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("trendingTabID")
        
        viewControllers = [homeViewController, searchViewController, accountViewController, trendingViewController]
        
        buttons[selectedIndex].selected = true
        didPressTab(buttons[selectedIndex])
        
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        // Access the ViewController that you will be transitioning too, a.k.a, the destinationViewController.
        let destinationViewController = segue.destinationViewController
        
        // Set the modal presentation style of your destinationViewController to be custom.
        destinationViewController.modalPresentationStyle = UIModalPresentationStyle.Custom
        
        // Create a new instance of your fadeTransition.
        fadeTransition = FadeTransition()
        
        // Tell the destinationViewController's  transitioning delegate to look in fadeTransition for transition instructions.
        destinationViewController.transitioningDelegate = fadeTransition
        
        // Adjust the transition duration. (seconds)
        fadeTransition.duration = 0.6
    }
    
    @IBAction func didPressCompose(sender: AnyObject) {
        performSegueWithIdentifier("firstSegue", sender: self)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didPressTab(sender: UIButton) {
    
        let previousIndex = selectedIndex
        selectedIndex = sender.tag
        
        buttons[previousIndex].selected = false
        let previousVC = viewControllers[previousIndex]
        previousVC.willMoveToParentViewController(nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        sender.selected = true
        
        let vc = viewControllers[selectedIndex]
        addChildViewController(vc)
        vc.view.frame = contentView.bounds
        contentView.addSubview(vc.view)
        vc.didMoveToParentViewController(self)
        
        if selectedIndex == 1 {
            exploreImageView.alpha = 0
//        } else {
//            exploreImageView.alpha = 1
        }
    }
    

}

