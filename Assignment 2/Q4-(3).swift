//
//  Q4-(3).swift
//  Assignment 2
//
//  Created by HPG on 10/02/24.
//

import UIKit

class Q4__3_: UIViewController {

    var S3var:String = ""
    
    @IBOutlet weak var S3lbl: UILabel!
    @IBOutlet weak var s3data: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        S3lbl.text = S3var;
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "s3to1" {
            let obj1 = segue.destination as! Q4__1_
            obj1.S1var = "Moving from \(s3data.text!)"
        }
        else if segue.identifier == "s3to2"{
            let obj1 = segue.destination as! Q4__2_
            obj1.S2var = "Moving from \(s3data.text!)"
        }
    }
}
