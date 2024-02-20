//
//  Q6-(2).swift
//  Assignment 2
//
//  Created by Quantum IT on 19/02/24.
//

import UIKit
import SQLite3

@available(iOS 16.0, *)
class Q6__2_: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    
    let db_Path: String = "myDB.sqlit";
    var db_pointer: OpaquePointer? = nil
    
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
        
        let file_path = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appending(path: db_Path);
        
        if(sqlite3_open(file_path.path, &db_pointer) != SQLITE_OK){
            print("Error in Database connection");
        }
        else{
            print("Error in Database connection");
        }

        let createTB = "CREATE TABLE IF NOT EXISTS empTB(empid INTEGER PRIMARY KEY, name TEXT, dept TEXT, DOJ TEXT)";
        
        var createTBSTMT: OpaquePointer? = nil;
        
        if(sqlite3_prepare_v2(db_pointer, createTB, -1, &createTBSTMT, nil) == SQLITE_OK){
            if(sqlite3_step(createTBSTMT) == SQLITE_DONE){
                print("Table Created")
            }
            else{
                print("Error in Table creation");
            }
        }
        else{
            print("Error in create TB statement");
        }
        
        sqlite3_finalize(createTBSTMT);
        
        let dirpath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true);
        print("File Path : \(dirpath[0])")
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
                let S2obj = self.storyboard?.instantiateViewController(identifier: "S1") as! Q6__1_
                        
                        self.present(S2obj, animated: true)
            }
            else{
                print("Error in Record insertion");
            }
        }
        else{
            print("Error in prepare statement");
        }
        
        sqlite3_finalize(insertEmpSTMT);
    }
}
