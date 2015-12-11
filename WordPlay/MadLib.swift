//
//  File.swift
//  WordPlay
//
//  Created by Robert Downey Jr. on 6/19/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

import UIKit

class MadLib
{
    var noun:String = ""
    var verb:String = ""
    var adjective:String = ""

    //Added for Stretch #2
    func getStory() -> String
    {
        return  "There once was a \(noun) that " +
                "\(verb) with the very \(adjective)" +
                " giant"
    }

    //Added for Stretch #4

    var attributedString = NSMutableAttributedString()
    var myString = String()

    func getAttributedStory() -> NSMutableAttributedString
    {
        myString = getStory()
        attributedString = NSMutableAttributedString(string: myString)

        //Uncomment for Stretch #4, comment out for other versions
        //changeStringColor(noun, color: UIColor.blueColor())
        //changeStringColor(verb, color: UIColor.blueColor())
        //changeStringColor(adjective, color: UIColor.blueColor())

        //Added for Stretch #5
        changeStringColor(noun, color: UIColor.nounColor())
        changeStringColor(verb, color: UIColor.verbColor())
        changeStringColor(adjective, color: UIColor.adjectiveColor())


        let stringLength = attributedString.length
        let font = UIFont(name: "Helvetica-Bold", size: 15.0)

        attributedString.addAttribute(NSFontAttributeName, value: font!, range: NSMakeRange(0, stringLength))

        return attributedString

    }

    func changeStringColor(word: String, color: UIColor)
    {
        let regularExpression = try? NSRegularExpression(pattern: word, options: [])
        let regularMatches = regularExpression!.matchesInString(myString, options: [], range: NSMakeRange(0, attributedString.length))

        for regularMatch in regularMatches
        {
            let wordRange = regularMatch.rangeAtIndex(0)
            attributedString.addAttribute(NSForegroundColorAttributeName, value: color, range: wordRange)
        }
        
    }

}
