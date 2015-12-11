//
//  ThirdViewController.swift
//  WordPlay
//
//  Created by Robert Downey Jr. on 6/19/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

import UIKit

//Added Delegate for Stretch #1
class ThirdViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var myTextField: UITextField!
    var myMadLib3 = MadLib()
    
    //Added for Stretch #1
    @IBOutlet weak var myButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        //Added for Stretch #1
        myButton.enabled = false

        //Added for Stretch #3
        navigationItem.title = myMadLib3.noun + "," + myMadLib3.verb
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
        let nvc = segue.destinationViewController as! FourthViewController
        myMadLib3.adjective = myTextField.text
        nvc.myMadLib4 = myMadLib3
    }

}
