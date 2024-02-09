//
//  Q3.swift
//  Assignment 2
//
//  Created by Quantum IT on 08/02/24.
//

import UIKit

class Q3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var inputScreenlbl: UITextField!
    
    @IBAction func b1click(_ sender: Any) {
        inputScreenlbl.text = "\(inputScreenlbl.text!)1"
    }
    @IBAction func b2click(_ sender: Any) {
        inputScreenlbl.text = "\(inputScreenlbl.text!)2"
    }
    @IBAction func b3click(_ sender: Any) {
        inputScreenlbl.text = "\(inputScreenlbl.text!)3"
    }
    @IBAction func b4click(_ sender: Any) {
        inputScreenlbl.text = "\(inputScreenlbl.text!)4"
    }
    @IBAction func b5click(_ sender: Any) {
        inputScreenlbl.text = "\(inputScreenlbl.text!)5"
    }
    @IBAction func b6click(_ sender: Any) {
        inputScreenlbl.text = "\(inputScreenlbl.text!)6"
    }
    @IBAction func b7click(_ sender: Any) {
        inputScreenlbl.text = "\(inputScreenlbl.text!)7"
    }
    @IBAction func b8click(_ sender: Any) {
        inputScreenlbl.text = "\(inputScreenlbl.text!)8"
    }
    @IBAction func b9click(_ sender: Any) {
        inputScreenlbl.text = "\(inputScreenlbl.text!)9"
    }
    @IBAction func b0click(_ sender: Any) {
        inputScreenlbl.text = "\(inputScreenlbl.text!)0"
    }
    @IBAction func sumbtn(_ sender: Any) {
        inputScreenlbl.text = "\(inputScreenlbl.text!) + "
    }
    @IBAction func subbtn(_ sender: Any) {
        inputScreenlbl.text = "\(inputScreenlbl.text!) - "
    }
    @IBAction func mulbtn(_ sender: Any) {
        inputScreenlbl.text = "\(inputScreenlbl.text!) * "
    }
    @IBAction func divbtn(_ sender: Any) {
        inputScreenlbl.text = "\(inputScreenlbl.text!) / "
    }
    @IBAction func ansbtn(_ sender: Any) {
    }
    @IBAction func clearbtn(_ sender: Any) {
        inputScreenlbl.text = ""
    }
}
