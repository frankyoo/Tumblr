//
//  SearchViewController.swift
//  Tumblr
//
//  Created by Frank Yoo on 2/27/16.
//  Copyright © 2016 Frank Yoo. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var searchFeedImageView: UIImageView!
    @IBOutlet weak var loadingImageView: UIImageView!
    
    var loading_1: UIImage!
    var loading_2: UIImage!
    var loading_3: UIImage!
    
    var images: [UIImage]!
    var animatedImage: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loading_1 = UIImage(named: "loading-1")
        loading_2 = UIImage(named: "loading-2")
        loading_3 = UIImage(named: "loading-3")
        
        images = [loading_1, loading_2, loading_3]
        animatedImage = UIImage.animatedImageWithImages(images, duration: 1.0)
        loadingImageView.image = animatedImage
        
    }

    // The main view is about to appear...
    override func viewWillAppear(animated: Bool) {
        // Set the alpha properties of the views to transparent
        searchFeedImageView.alpha = 0
        loadingImageView.alpha = 1
    }
    
    // The main view appeared...
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(0.6, delay: 1.5, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.6, options: [], animations: { () -> Void in
            
            // Set the alpha properties of the views to fully opaque
            self.searchFeedImageView.alpha = 1
            self.loadingImageView.alpha = 0
            
            }, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
