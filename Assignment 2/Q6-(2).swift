//
//  Q6-(2).swift
//  Assignment 2
//
//  Created by Quantum IT on 19/02/24.
//

import UIKit
import SQLite3

class Q6__2_: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    
    let db_Path: String = "myDB.sqlit";
    let db_pointer: OpaquePointer? = nil
    
    let deptList:[String] = ["IT","HR","R & D","Sales"];
    var selectedDept: String = "";
    var selectedDOJ: String = "";
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1;
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return deptList.count;
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return deptList[row];
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedDept = deptList[pickerView.selectedRow(inComponent: 0)]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBAction func DOJChanged(_ sender: Any) {
        let dt = DateFormatter();
        dt.dateStyle = DateFormatter.Style.long;
        dt.dateFormat = "dd/MM/yyyy";
        
        selectedDOJ = dt.string(from: datePicker.date);
    }
    
    @IBOutlet weak var namelbl: UITextField!
    @IBAction func AddEmpClick(_ sender: Any) {
        let empid = Int.random(in: 99999...999999)
        
        let InsertEmp = "INSERT INTO empTB values(\(empid),'\(namelbl.text!)','\(selectedDept)','\(selectedDOJ)')"
        
        var insertEmpSTMT:OpaquePointer? = nil;
        
        if(sqlite3_prepare_v2(db_pointer, InsertEmp, -1, &insertEmpSTMT, nil) == SQLITE_OK){
            if(sqlite3_step(insertEmpSTMT) == SQLITE_DONE){
                print("Record Inserted of (\(namelbl.text!)) in \(selectedDept) Department.");
            }
            else{
                print("Error in Record insertion");
            }
        }
        else{
            print("Error in prepare statement");
        }
    }
}
