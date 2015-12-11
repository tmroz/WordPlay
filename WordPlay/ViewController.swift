//
//  ViewController.swift
//  WordPlay
//
//  Created by Robert Downey Jr. on 6/17/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

import UIKit

//Added Delegate for Stretch #1
class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var myTextField: UITextField!
    var myMadLib1 = MadLib()

    //Added for Stretch #1
    @IBOutlet weak var myButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        //Added for Stretch #1
        myButton.enabled = false
    }

    //Added Delegate Function for Stretch #1
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool
    {
        if myTextField.text != ""
        {
            myButton.enabled = true
        }
        return true
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let nvc = segue.destinationViewController as! SecondViewController
        myMadLib1.noun = myTextField.text
        nvc.myMadLib2 = myMadLib1
    }
}

