//
//  MailingListTableViewController.swift
//  Rabbitmail
//
//  Created by Shumail Mohy ud Din on 4/23/16.
//  Copyright © 2016 Rabbitmail. All rights reserved.
//

import UIKit

class MailingListTableViewController: UITableViewController {
    
    var mailingLists:[PSO_MailingList] = mailingListsData
    var mailingListIdToPass:String!
    
    @IBOutlet var menuButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mailingLists.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath)
        -> UITableViewCell {
            let cell = tableView.dequeueReusableCellWithIdentifier("MailingListCell", forIndexPath: indexPath) as! MailingListCell
            
            let mailingListRow = self.mailingLists[indexPath.row] as PSO_MailingList
            cell.mailingListRow = mailingListRow
            
            return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        print("selected cell")
        
        let indexPath = tableView.indexPathForSelectedRow
        let currentCell = tableView.cellForRowAtIndexPath(indexPath!)! as! MailingListCell
        print(currentCell.listId!.text)
        
        mailingListIdToPass = currentCell.listId!.text
        print("mailingListIdToPass: " + mailingListIdToPass)
        performSegueWithIdentifier("showMailingListRowDetail", sender: self)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if (segue.identifier == "showMailingListRowDetail") {
            
            // initialize new view controller and cast it as your view controller
            let viewController = segue.destinationViewController as! MailingListRowDetailTableViewController
            // your new view controller should have property that will store passed value
            viewController.mailingListId = self.mailingListIdToPass
        }
        
    }
    
    
    
    

}