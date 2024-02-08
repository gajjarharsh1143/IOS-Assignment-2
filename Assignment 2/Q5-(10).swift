//
//  Q5.swift
//  Assignment 2
//
//  Created by HPG on 07/02/24.
//

import UIKit

class Q5: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    
    var courseArray:[String] = ["IT","ICT"];
    var selectedCourse:String = "";
    
    var semArray:[Int8] = [1,2,3,4,5,6,7,8,9,10];
    var selectedSem:Int8 = 1;
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return courseArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return courseArray[row]
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func registerclick(_ sender: Any) {
    }
}
