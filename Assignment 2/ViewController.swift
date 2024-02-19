//
//  ViewController.swift
//  Assignment 2
//
//  Created by HPG on 03/02/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var Q1btn: UIButton!
    
    @IBOutlet weak var Q2btn: UIButton!
    
    @IBOutlet weak var Q3btn: UIButton!
    
    @IBOutlet weak var Q4btn: UIButton!

    @IBOutlet weak var Q5btn: UIButton!
    
    @IBOutlet weak var Q6btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Q1btn.layer.cornerRadius = 75;
        Q1btn.layer.shadowColor = UIColor.black.cgColor
        Q1btn.layer.shadowOpacity = 0.5
        Q1btn.layer.shadowOffset = CGSize(width: 0, height: 5)
        Q1btn.layer.shadowRadius = 2
        Q1btn.layer.masksToBounds = false
        
        Q2btn.layer.cornerRadius = 75;
        Q2btn.layer.shadowColor = UIColor.black.cgColor
        Q2btn.layer.shadowOpacity = 0.5
        Q2btn.layer.shadowOffset = CGSize(width: 0, height: 5)
        Q2btn.layer.shadowRadius = 2
        Q2btn.layer.masksToBounds = false
        
        Q3btn.layer.cornerRadius = 75;
        Q3btn.layer.shadowColor = UIColor.black.cgColor
        Q3btn.layer.shadowOpacity = 0.5
        Q3btn.layer.shadowOffset = CGSize(width: 0, height: 5)
        Q3btn.layer.shadowRadius = 2
        Q3btn.layer.masksToBounds = false
        
        Q4btn.layer.cornerRadius = 75;
        Q4btn.layer.shadowColor = UIColor.black.cgColor
        Q4btn.layer.shadowOpacity = 0.5
        Q4btn.layer.shadowOffset = CGSize(width: 0, height: 5)
        Q4btn.layer.shadowRadius = 2
        Q4btn.layer.masksToBounds = false
        
        Q5btn.layer.cornerRadius = 75;
        Q5btn.layer.shadowColor = UIColor.black.cgColor
        Q5btn.layer.shadowOpacity = 0.5
        Q5btn.layer.shadowOffset = CGSize(width: 0, height: 5)
        Q5btn.layer.shadowRadius = 2
        Q5btn.layer.masksToBounds = false
        
        Q6btn.layer.cornerRadius = 75;
        Q6btn.layer.shadowColor = UIColor.black.cgColor
        Q6btn.layer.shadowOpacity = 0.5
        Q6btn.layer.shadowOffset = CGSize(width: 0, height: 5)
        Q6btn.layer.shadowRadius = 2
        Q6btn.layer.masksToBounds = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "smainto1" {
            let obj1 = segue.destination as! Q4__1_
            obj1.S1var = "Moving from Main screen"
        }
    }
    
}

//1. Create a screen that has input boxes for User Name, Password, Address, Gender, Age (numeric) and a Submit button. On clicking the submit button, print all the data below the Submit Button
//2. Design an iOS application to create page with two text box and one Button and pass the combined text box Values from one screen to label on second screen.
//3. Develop an iOS application for Simple calculator with single label or text box.
//4. Develop an iOS application for multiple screens with text navigation.
//5. Create a user registration application that stores the user details in a SQLite database table (assume appropriate table fields).
//6. Create a employee management application that that performs CRUD operations in a SQLite database table (assume appropriate table fields)

