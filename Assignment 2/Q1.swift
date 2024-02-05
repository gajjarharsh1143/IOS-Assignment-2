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
}
