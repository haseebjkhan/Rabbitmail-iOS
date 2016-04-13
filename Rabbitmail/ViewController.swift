//
//  ViewController.swift
//  Rabbitmail
//
//  Created by Shumail Mohy ud Din on 4/14/16.
//  Copyright © 2016 Rabbitmail. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var usernameLabel : UILabel!
    @IBOutlet var passwordLabel : UILabel!
    @IBOutlet var usernameField : UITextField!
    @IBOutlet var passwordField : UITextField!
    @IBOutlet var resultTextview : UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func viewTapped(sender: AnyObject) {
        usernameField.resignFirstResponder()
        passwordField.resignFirstResponder()
    }
    
    @IBAction func loginTapped(sender: AnyObject) {
        doLogin()
    }
    
    func doLogin() {
        
        let request = NSMutableURLRequest(URL: NSURL(string: "http://shumailmohyuddin.com/osites/FYP/api_user.php")!)
        request.HTTPMethod = "POST"
        let username = usernameField.text
        let password = passwordField.text
        var responseString = ""
        let postString = "username=" + username! + "&password=" + password!
        request.HTTPBody = postString.dataUsingEncoding(NSUTF8StringEncoding)
        let task = NSURLSession.sharedSession().dataTaskWithRequest(request) { data, response, error in
            guard error == nil && data != nil else {                                                          // check for fundamental networking error
                print("error=\(error)")
                return
            }
            
            if let httpStatus = response as? NSHTTPURLResponse where httpStatus.statusCode != 200 {           // check for http errors
                print("statusCode should be 200, but is \(httpStatus.statusCode)")
                print("response = \(response)")
            }
            
            responseString = NSString(data: data!, encoding: NSUTF8StringEncoding) as! String
            print("responseString = \(responseString)")
            dispatch_async(dispatch_get_main_queue()) {
                // Update the UI on the main thread.
                self.resultTextview.text = responseString
            }
        }
        task.resume()
    }
    

}

