//
//  Q2-(1).swift
//  Assignment 2
//
//  Created by HPG on 07/02/24.
//

import UIKit

class Q2__1_: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    var data:String = "";
    
    @IBOutlet weak var t1box: UITextField!
    @IBOutlet weak var t2box: UITextField!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let obj = segue.destination as! Q2__2_
        obj.str = "\(t1box.text!) | \(t2box.text!)";
    }
}
