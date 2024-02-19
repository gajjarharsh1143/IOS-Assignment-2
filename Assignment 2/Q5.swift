//
//  Q5.swift
//  Assignment 2
//
//  Created by HPG on 07/02/24.
//

import UIKit
import SQLite3
@available(iOS 16.0, *)

class Q5: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource  {

    var courseArray:[String] = ["IT","ICT"];
    var selectedCourse:String = "";
    var selectedDOB:String = "";
    
    let tableName = "userTB";
    
//    var semArray:[Int8] = [1,2,3,4,5,6,7,8,9,10];
//    var selectedSem:Int8 = 1;
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return courseArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return courseArray[row]
    }
    
    @IBOutlet weak var pickerval: UIPickerView!
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedCourse = courseArray[pickerView.selectedRow(inComponent: 0)]
    }
    
    var db_path : String = "myDB.sqlit";
    var db_pointer : OpaquePointer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let file_path = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appending(path: db_path)
        
        if(sqlite3_open(file_path.path, &db_pointer) != SQLITE_OK){
            print("Error in Database Connection");
        }
        else{
            print("Database Connected");
        }
        
        let createTB = "CREATE TABLE IF NOT EXISTS \(tableName)(name TEXT, email TEXT PRIMARY KEY, password TEXT, course TEXT, sem INTEGER, dob TEXT)";
        var createSTMT:OpaquePointer?=nil;
        
        if(sqlite3_prepare_v2(db_pointer, createTB, -1, &createSTMT, nil) == SQLITE_OK){
            if(sqlite3_step(createSTMT) == SQLITE_DONE){
                print("Table Created");
            }
            else{
                print("Error in Table Creation");
            }
        }
        else{
            print("Error in Statement");
        }

        sqlite3_finalize(createSTMT);
        
        let dirpath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true);
        print("File Path : \(dirpath[0])")
    }
    
    @IBOutlet weak var datepicker: UIDatePicker!
    @IBAction func ondatepickerchanged(_ sender: Any) {
        let DOB = DateFormatter();
        
        DOB.dateStyle = DateFormatter.Style.long;
        DOB.dateFormat = "dd/MM/yyyy"
        
        selectedDOB = DOB.string(from: datepicker.date)
    }
    
    @IBOutlet weak var namelbl: UITextField!
    @IBOutlet weak var emaillbl: UITextField!
    @IBOutlet weak var pwdlbl: UITextField!
    @IBOutlet weak var semlbl: UITextField!
    
    @IBAction func registerClick(_ sender: Any) {
        let InsertRecord = "INSERT INTO \(tableName) values('\(namelbl.text!)','\(emaillbl.text!)','\(pwdlbl.text!)','\(selectedCourse)',\(semlbl.text!),'\(selectedDOB)')";
        var InsertRecordSTMT:OpaquePointer? = nil;
        
        print("Query : \(InsertRecord)")
        
        if(sqlite3_prepare_v2(db_pointer, InsertRecord, -1, &InsertRecordSTMT, nil) == SQLITE_OK){
            if(sqlite3_step(InsertRecordSTMT) == SQLITE_DONE){
                print("Data Inserted");
                
                namelbl.text = "";
                emaillbl.text = "";
                pwdlbl.text = "";
                semlbl.text = "";
            }
            else{
                print("Error in data insertion");
            }
        }
        else{
            print("Error in Insert Statement");
        }
        
        sqlite3_finalize(InsertRecordSTMT);
    }
}
