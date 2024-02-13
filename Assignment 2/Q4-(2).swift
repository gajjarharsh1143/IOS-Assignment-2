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
    override func viewDidLoad() {
        super.viewDidLoad()
        
        S2lbl.text = S2var;
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let obj2 = segue.destination as! Q4__3_
        obj2.S3var = "Moving from screen 2"
    }
}
