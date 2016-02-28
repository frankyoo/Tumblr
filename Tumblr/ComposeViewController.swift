//
//  ComposeViewController.swift
//  Tumblr
//
//  Created by Frank Yoo on 2/27/16.
//  Copyright © 2016 Frank Yoo. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    @IBOutlet weak var textButton: UIButton!
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var quoteButton: UIButton!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var videoButton: UIButton!
    
    var textButtonInitialY: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(animated: Bool) {

        let textButtonInitialY = textButton.frame.origin.y
        print("Will appear textButtonInitialY \(textButtonInitialY)")
        
        self.textButton.frame.origin.y = 568
        self.photoButton.frame.origin.y = 568
        self.quoteButton.frame.origin.y = 568
        self.linkButton.frame.origin.y = 568
        self.chatButton.frame.origin.y = 568
        self.videoButton.frame.origin.y = 568
        
    }

    override func viewDidAppear(animated: Bool) {
        
//        print("Did appear textButtonInitialY \(textButtonInitialY)")
        
//        view.alpha = 0.1
        print("alpha \(view.alpha)")
        
        UIView.animateWithDuration(0.6, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.6, options: [], animations: { () -> Void in
//            self.textButton.frame.origin.y = CGFloat(self.textButtonInitialY)
            self.textButton.frame.origin.y = 111
            }, completion: nil)
        
        UIView.animateWithDuration(0.6, delay: 0.1, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.6, options: [], animations: { () -> Void in
            self.photoButton.frame.origin.y = 111
            }, completion: nil)
        
        UIView.animateWithDuration(0.6, delay: 0.2, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.6, options: [], animations: { () -> Void in
            self.quoteButton.frame.origin.y = 111
            }, completion: nil)
        
        UIView.animateWithDuration(0.6, delay: 0.3, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.6, options: [], animations: { () -> Void in
            self.linkButton.frame.origin.y = 250
            }, completion: nil)
        
        UIView.animateWithDuration(0.6, delay: 0.2, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.6, options: [], animations: { () -> Void in
            self.chatButton.frame.origin.y = 250
            }, completion: nil)
        
        UIView.animateWithDuration(0.6, delay: 0.1, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.6, options: [], animations: { () -> Void in
            self.videoButton.frame.origin.y = 250
            }, completion: nil)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressNevermind(sender: AnyObject) {

            UIView.animateWithDuration(0.6, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.6, options: [], animations: { () -> Void in
                //            self.textButton.frame.origin.y = CGFloat(self.textButtonInitialY)
                self.textButton.frame.origin.y = 0
                self.textButton.alpha = 0
                }, completion: nil)
            
            UIView.animateWithDuration(0.6, delay: 0.1, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.6, options: [], animations: { () -> Void in
                self.photoButton.frame.origin.y = 0
                self.photoButton.alpha = 0
                }, completion: nil)
            
            UIView.animateWithDuration(0.6, delay: 0.2, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.6, options: [], animations: { () -> Void in
                self.quoteButton.frame.origin.y = 0
                self.quoteButton.alpha = 0
                }, completion: nil)
            
            UIView.animateWithDuration(0.6, delay: 0.3, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.6, options: [], animations: { () -> Void in
                self.linkButton.frame.origin.y = 0
                self.linkButton.alpha = 0
                }, completion: { (Bool) -> Void in
                    
                    self.dismissViewControllerAnimated(false, completion: nil)
                    
            })
            
            UIView.animateWithDuration(0.6, delay: 0.2, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.6, options: [], animations: { () -> Void in
                self.chatButton.frame.origin.y = 0
                self.chatButton.alpha = 0
                }, completion: nil)
            
            UIView.animateWithDuration(0.6, delay: 0.1, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.6, options: [], animations: { () -> Void in
                self.videoButton.frame.origin.y = 0
                self.videoButton.alpha = 0
                }, completion: nil)

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
