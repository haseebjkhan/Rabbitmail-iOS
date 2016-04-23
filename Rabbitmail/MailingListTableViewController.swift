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

}