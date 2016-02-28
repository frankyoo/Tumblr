//
//  TrendingScrollViewController.swift
//  Tumblr
//
//  Created by Frank Yoo on 2/27/16.
//  Copyright © 2016 Frank Yoo. All rights reserved.
//

import UIKit

class TrendingScrollViewController: UIViewController {

    @IBOutlet weak var trendingScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        trendingScrollView.contentSize = CGSize(width: 320, height: 1217)
        trendingScrollView.frame.size = CGSize(width: 320, height: 548)
        
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
