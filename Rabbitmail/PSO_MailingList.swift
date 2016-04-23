//
//  PSO_MailingLists.swift
//  Rabbitmail
//
//  Created by Shumail Mohy ud Din on 4/23/16.
//  Copyright © 2016 Rabbitmail. All rights reserved.
//

import UIKit

struct PSO_MailingList {
    var listId: String?
    var name: String?
    var description: String?
    var mailingListCollectionName: String?
    var subscribers: Int
    var customerId: String?
    var dateCreated: String?
    var lastModified: String?
    
    init(listId: String?, name: String?, description: String?, mailingListCollectionName: String?, subscribers: Int, customerId: String?, dateCreated: String?, lastModified: String? ) {
        self.listId = listId
        self.name = name
        self.description = description
        self.mailingListCollectionName = mailingListCollectionName
        self.subscribers = subscribers
        self.customerId = customerId
        self.dateCreated = dateCreated
        self.lastModified = lastModified
    }
}

//
//{
//    "name": "hello",
//    "description": "Regular weekly 7D developers newsletter",
//    "mailingListCollectionName": "list-hello-56cbe002bd113c36f84cd312",
//    "subscribers": 7,
//    "customerId": "56cbe002bd113c36f84cd312",
//    "_id": "5718458cbd113c029c982a1c",
//    "date_created": "2016-04-21T04:48:47.937Z",
//    "last_modified": "2016-04-21T04:48:56.581Z"
//},