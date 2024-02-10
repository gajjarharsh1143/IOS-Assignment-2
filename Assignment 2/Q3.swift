//
//  Q3.swift
//  Assignment 2
//
//  Created by Quantum IT on 08/02/24.
//

import UIKit

class Q3: UIViewController {
    var a :Int32?
    var b :Int32?
    var operation :String = "";

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var inputScreenlbl: UITextField!
    
    @IBAction func b1click(_ sender: Any) {
        inputScreenlbl.text = "\(inputScreenlbl.text!)1"
        if(a == nil){
            return a = 1;
        }
        return b = 1;
    }
    @IBAction func b2click(_ sender: Any) {
        inputScreenlbl.text = "\(inputScreenlbl.text!)2"
        if(a == nil){
            return a = 2;
        }
        return b = 2;
    }
    @IBAction func b3click(_ sender: Any) {
        inputScreenlbl.text = "\(inputScreenlbl.text!)3"
        if(a == nil){
            return a = 3;
        }
        return b = 3;
    }
    @IBAction func b4click(_ sender: Any) {
        inputScreenlbl.text = "\(inputScreenlbl.text!)4"
        if(a == nil){
            return a = 4;
        }
        return b = 4;
    }
    @IBAction func b5click(_ sender: Any) {
        inputScreenlbl.text = "\(inputScreenlbl.text!)5"
        if(a == nil){
            return a = 5;
        }
        return b = 5;
    }
    @IBAction func b6click(_ sender: Any) {
        inputScreenlbl.text = "\(inputScreenlbl.text!)6"
        if(a == nil){
            return a = 6;
        }
        return b = 6;
    }
    @IBAction func b7click(_ sender: Any) {
        inputScreenlbl.text = "\(inputScreenlbl.text!)7"
        if(a == nil){
            return a = 7;
        }
        return b = 7;
    }
    @IBAction func b8click(_ sender: Any) {
        inputScreenlbl.text = "\(inputScreenlbl.text!)8"
        if(a == nil){
            return a = 8;
        }
        return b = 8;
    }
    @IBAction func b9click(_ sender: Any) {
        inputScreenlbl.text = "\(inputScreenlbl.text!)9"
        if(a == nil){
            return a = 9;
        }
        return b = 9;
    }
    @IBAction func b0click(_ sender: Any) {
        inputScreenlbl.text = "\(inputScreenlbl.text!)0"
        if(a == nil){
            return a = 0;
        }
        return b = 0;
    }
    @IBAction func sumbtn(_ sender: Any) {
        inputScreenlbl.text = "\(inputScreenlbl.text!) + "
        operation = "+"
    }
    @IBAction func subbtn(_ sender: Any) {
        inputScreenlbl.text = "\(inputScreenlbl.text!) - "
        operation = "-"
    }
    @IBAction func mulbtn(_ sender: Any) {
        inputScreenlbl.text = "\(inputScreenlbl.text!) * "
        operation = "*"
    }
    @IBAction func divbtn(_ sender: Any) {
        inputScreenlbl.text = "\(inputScreenlbl.text!) / "
        operation = "/"
    }
    @IBAction func ansbtn(_ sender: Any) {
        if(a != nil && b != nil){
            print("\(a!) \(operation) \(b!)")
            
            if(operation == "+"){
                inputScreenlbl.text = "\(a! + b!)"
            }
            else if(operation == "-"){
                inputScreenlbl.text = "\(a! - b!)"
            }
            else if(operation == "*"){
                inputScreenlbl.text = "\(a! * b!)"
            }
            else if(operation == "/"){
                inputScreenlbl.text = "\(a! / b!)"
            }
            else{
                inputScreenlbl.text = "Error"
            }
        }
    }
    @IBAction func clearbtn(_ sender: Any) {
        a = nil
        b = nil
        operation = ""
        inputScreenlbl.text = ""
    }
}
