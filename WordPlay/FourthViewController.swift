//
//  FourthViewController.swift
//  WordPlay
//
//  Created by Robert Downey Jr. on 6/19/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    @IBOutlet weak var myTextView: UITextView!

    var myMadLib4 = MadLib()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Uncomment the line below for MVP, comment out for other versions
        //myTextView.text =   "There once was a \(myMadLib4.noun) that " +
        //                    "\(myMadLib4.verb) with the very \(myMadLib4.adjective)" +
        //                    " giant"


        //Uncomment the line below for Stretch #2, comment out for other versions
        //myTextView.text = myMadLib4.getStory()
        
        //Added for Stretch #3
        navigationItem.title = myMadLib4.noun + "," + myMadLib4.verb + "," + myMadLib4.adjective

        //Uncomment the line below for Stretch #4, comment out for other versions
        myTextView.attributedText = myMadLib4.getAttributedStory()

        

    }
}
