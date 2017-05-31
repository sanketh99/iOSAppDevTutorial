//
//  ViewController.swift
//  FoodTracker
//
//  Created by Sanketh Kamath on 5/30/17.
//  Copyright © 2017 Sanketh Kamath. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: Properties

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealLabelName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nameTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard (also resign the FirstResponder Duties of the text field)
        textField.resignFirstResponder()
        return true
    }
    
        //This method is utilized after textFieldShouldReturn and reads the written text.
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealLabelName.text = textField.text
    }

    //MARK: Actions
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealLabelName.text = "Default Text"
    }

}

