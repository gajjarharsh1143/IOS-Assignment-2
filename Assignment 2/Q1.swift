//
//  Q1.swift
//  Assignment 2
//
//  Created by HPG on 03/02/24.
//

import UIKit

class Q1: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource{
    
    
    var genderArray:[String] = ["Male","Female","None"];
    var selectedGender:String = "";
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1;
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return genderArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return genderArray[row]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedGender = genderArray[pickerView.selectedRow(inComponent: 0)];
    }
    
    @IBOutlet weak var usernamelbl: UITextField!
    @IBOutlet weak var pwdlbl: UITextField!
    @IBOutlet weak var addresslbl: UITextField!
    @IBOutlet weak var agelbl: UITextField!
    @IBOutlet weak var resultlbl: UILabel!
    
    
    
    @IBOutlet weak var resusername: UILabel!
    @IBOutlet weak var respwd: UILabel!
    @IBOutlet weak var resaddress: UILabel!
    @IBOutlet weak var resgender: UILabel!
    @IBOutlet weak var resage: UILabel!
    
    @IBAction func submitevent(_ sender: Any) {
        resusername.text = "Username : \(usernamelbl.text!)";
        respwd.text = "Password : \(pwdlbl.text!)";
        resaddress.text = "Username : \(usernamelbl.text!)";
        resgender.text = "Gender : \(selectedGender)";
        resage.text = "Age : \(agelbl.text!)";
    }
}
