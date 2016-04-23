//
//  MailingListRowDetailTableViewController.swift
//  Rabbitmail
//
//  Created by Shumail Mohy ud Din on 4/24/16.
//  Copyright © 2016 Rabbitmail. All rights reserved.
//

import UIKit

class MailingListRowDetailTableViewController: UITableViewController {
    
    var mailingListId:String!
    
    var emailAddresses:[String] = [
        "shumailmohyuddin@gmail.com",
        "haseebjamilkhan@gmail.com",
        "page@google.com",
        "elonmusk@teslamotors.com",
        "bhatti@rabbitmail.com",
        "carols@google.com"]
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emailAddresses.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MailingListRowDetailCell", forIndexPath: indexPath)
        cell.textLabel?.text = mailingListId + "-" + emailAddresses[indexPath.row]
        return cell
    }

}
