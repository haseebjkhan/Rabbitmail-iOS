//
//  DataContainerSingleton.swift
//  Rabbitmail
//
//  Created by Shumail Mohy ud Din on 4/23/16.
//  Copyright © 2016 Rabbitmail. All rights reserved.
//

import Foundation
import UIKit


/**
 This struct defines the keys used to save the data container singleton's properties to NSUserDefaults.
 This is the "Swift way" to define string constants.
 */
struct DefaultsKeys
{
    static let customerId  = "someString"
    static let someOtherString  = "someOtherString"
}

/**
 :Class:   DataContainerSingleton
 This class is used to save app state data and share it between classes.
 It observes the system UIApplicationDidEnterBackgroundNotification and saves its properties to NSUserDefaults before
 entering the background.
 Use the syntax `DataContainerSingleton.sharedDataContainer` to reference the shared data container singleton
 */

class DataContainerSingleton
{
    static let sharedDataContainer = DataContainerSingleton()
    
    //------------------------------------------------------------
    //Add properties here that you want to share accross your app
    var customerId: String?
    var someOtherString: String?
    //------------------------------------------------------------
    
    var goToBackgroundObserver: AnyObject?
    
    init()
    {
        let defaults = NSUserDefaults.standardUserDefaults()
        //-----------------------------------------------------------------------------
        //This code reads the singleton's properties from NSUserDefaults.
        //edit this code to load your custom properties
        
        customerId = defaults.objectForKey(DefaultsKeys.customerId) as! String?
        someOtherString = defaults.objectForKey(DefaultsKeys.someOtherString) as! String?
        
        //-----------------------------------------------------------------------------
        
        //Add an obsever for the UIApplicationDidEnterBackgroundNotification.
        //When the app goes to the background, the code block saves our properties to NSUserDefaults.
        
        goToBackgroundObserver = NSNotificationCenter.defaultCenter().addObserverForName(
            UIApplicationDidEnterBackgroundNotification,
            object: nil,
            queue: nil)
        {
            (note: NSNotification!) -> Void in
            let defaults = NSUserDefaults.standardUserDefaults()
            //-----------------------------------------------------------------------------
            //This code saves the singleton's properties to NSUserDefaults.
            //edit this code to save your custom properties
            defaults.setObject( self.customerId, forKey: DefaultsKeys.customerId)
            defaults.setObject( self.someOtherString, forKey: DefaultsKeys.someOtherString)
            //-----------------------------------------------------------------------------
            
            //Tell NSUserDefaults to save to disk now.
            defaults.synchronize()
        }
    }
}