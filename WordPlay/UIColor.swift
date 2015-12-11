//
//  UIColor.swift
//  WordPlay
//
//  Created by Robert Downey Jr. on 6/20/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

//Added for Stretch #5 
import UIKit

extension UIColor
{
    class func nounColor() -> UIColor
    {
        return UIColor(red: 255/255, green: 251/255, blue: 1/255, alpha: 1.0)
    }
    class func verbColor() -> UIColor
    {
        return UIColor(red: 232/255, green: 138/255, blue: 3/255, alpha: 1.0)
    }
    class func adjectiveColor() -> UIColor
    {
        return UIColor(red: 134/255, green: 3/255, blue: 232/255, alpha: 1.0)
    }
}