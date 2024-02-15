//
//  Q4-(1).swift
//  Assignment 2
//
//  Created by HPG on 10/02/24.
//

import UIKit

class Q4__1_: UIViewController {
    var S1var:String = ""

    @IBOutlet weak var S1lbl: UILabel!
    @IBOutlet weak var s1data: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        S1lbl.text = S1var;
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "s1to2" {
            let obj1 = segue.destination as! Q4__2_
            obj1.S2var = "Moving from \(s1data.text!)"
        }
        else if segue.identifier == "s1to3"{
            let obj1 = segue.destination as! Q4__3_
            obj1.S3var = "Moving from \(s1data.text!)"
        }
    }
}
