//
//  Q4-(1).swift
//  Assignment 2
//
//  Created by HPG on 10/02/24.
//

import UIKit

class Q4__1_: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let obj1 = segue.destination as! Q4__2_
        obj1.S2var = "Moving from screen 1"
    }
}
