//
//  ViewController.swift
//  Rabbitmail
//
//  Created by Shumail Mohy ud Din on 4/14/16.
//  Copyright © 2016 Rabbitmail. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        self.performSegueWithIdentifier("login_segue", sender:self)
    }

}

