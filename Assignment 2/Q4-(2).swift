//
//  Q4-(2).swift
//  Assignment 2
//
//  Created by HPG on 10/02/24.
//

import UIKit

class Q4__2_: UIViewController {

    var S2var:String = ""
    
    @IBOutlet weak var S2lbl: UILabel!
    @IBOutlet weak var s2data: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        S2lbl.text = S2var;
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "s2to3" {
            let obj1 = segue.destination as! Q4__3_
            obj1.S3var = "Moving from \(s2data.text!)"
        }
        else if segue.identifier == "s2to1"{
            let obj1 = segue.destination as! Q4__1_
            obj1.S1var = "Moving from \(s2data.text!)"
        }
    }
}
