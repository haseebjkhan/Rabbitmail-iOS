//
//  MailingListCell.swift
//  Rabbitmail
//
//  Created by Shumail Mohy ud Din on 4/23/16.
//  Copyright © 2016 Rabbitmail. All rights reserved.
//

import UIKit

class MailingListCell: UITableViewCell {
    
    @IBOutlet weak var listName: UILabel!
    @IBOutlet weak var listDescription: UILabel!
    @IBOutlet weak var listSubscribers: UILabel!
    @IBOutlet weak var listId: UILabel!
    
    var mailingListRow: PSO_MailingList! {
        didSet {
            listName.text = mailingListRow.name
            listDescription.text = mailingListRow.description
            listSubscribers.text = String(mailingListRow.subscribers) + " Subscribers"
            listId.text = mailingListRow.listId
        }
    }
    


}
