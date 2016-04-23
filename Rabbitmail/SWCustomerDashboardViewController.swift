//
//  SWCustomerDashboardViewController.swift
//  Rabbitmail
//
//  Created by Shumail Mohy ud Din on 4/15/16.
//  Copyright © 2016 Rabbitmail. All rights reserved.
//

import UIKit

class SWCustomerDashboardViewController: UIViewController {

    @IBOutlet var menuButton: UIBarButtonItem!
    @IBOutlet var userIdLabel : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
        let globalCustomerId = "dashboard - " + DataContainerSingleton.sharedDataContainer.customerId!
        
        userIdLabel.text = globalCustomerId
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
