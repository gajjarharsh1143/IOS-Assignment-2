//
//  Q6-(1).swift
//  Assignment 2
//
//  Created by Quantum IT on 19/02/24.
//

import UIKit
import SQLite3

@available(iOS 16.0, *)
class Q6__1_: UIViewController,UITableViewDataSource,UITableViewDelegate {
    struct Employee {
        let id: Int
        let name: String
        let department: String
        let joiningDate: String
    }
    
    var employees: [Employee] = []
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return employees.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let employee = employees[indexPath.row]
        
        cell.textLabel?.text = "\(employee.name), \(employee.department)"
        cell.detailTextLabel?.text = "Joining Date: \(employee.joiningDate)"
            
        return cell;
    }
    
    let db_Path: String = "myDB.sqlit";
    var db_pointer: OpaquePointer? = nil
    
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
        
        displayData()
    }
    
    @IBOutlet weak var tableViewObj: UITableView!
    func displayData() {
        let GetData = "SELECT * FROM empTB"
        
        var select_stmt:OpaquePointer?=nil;
        
        if( sqlite3_prepare_v2(db_pointer, GetData , -1, &select_stmt , nil) == SQLITE_OK ){
                
                while ( sqlite3_step(select_stmt) == SQLITE_ROW )
                {
                    let id = sqlite3_column_int(select_stmt, 0)
                    let name = String ( describing: String( cString:  sqlite3_column_text(select_stmt, 1) ))
                    let dept = String ( describing: String( cString:  sqlite3_column_text(select_stmt, 2) ))
                    let DOJ = String ( describing: String( cString:  sqlite3_column_text(select_stmt, 3) ))
                    
                    let employee = Employee(id: Int(id), name: name, department: dept, joiningDate: DOJ)
                    employees.append(employee)

//                    print("roll \(name)  name \(dept)  Joining-date \(DOJ)");
                }
            print(employees)
                
        }else{
            print("Error in Prepare statement ")
        }
        sqlite3_finalize(select_stmt);
        tableViewObj.reloadData()
    }
}
