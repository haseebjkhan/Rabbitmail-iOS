//
//  CustomerDashboardViewController.swift
//  Rabbitmail
//
//  Created by Shumail Mohy ud Din on 4/15/16.
//  Copyright © 2016 Rabbitmail. All rights reserved.
//

import UIKit

class CustomerDashboardViewController: UIViewController {
    
    @IBOutlet var userIdLabel : UILabel!
    
    var userIdLabelText : String! = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        print("customer view me");
        print("user id = \(userIdLabelText)")
        userIdLabel.text = userIdLabelText
        print("from id = \(userIdLabel.text)")

        // Do any additional setup after loading the view.
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
