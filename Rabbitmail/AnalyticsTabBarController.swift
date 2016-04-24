//
//  AnalyticsTabBarController.swift
//  Rabbitmail
//
//  Created by Shumail Mohy ud Din on 4/24/16.
//  Copyright © 2016 Rabbitmail. All rights reserved.
//

import UIKit

class AnalyticsTabBarController: UITabBarController {
    
    @IBOutlet var menuButton: UIBarButtonItem!

    override func viewDidLoad() {
        super.viewDidLoad()
        
                if self.revealViewController() != nil {
                    menuButton.target = self.revealViewController()
                    menuButton.action = "revealToggle:"
                    self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
                }
    }


}
