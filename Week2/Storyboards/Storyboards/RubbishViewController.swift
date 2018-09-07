//
//  RubbishViewController.swift
//  Storyboards
//
//  Created by Max Altena on 07/09/2018.
//  Copyright © 2018 Max Altena. All rights reserved.
//

import UIKit

class RubbishViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var label: UILabel!
    @IBAction func doSomethingVeryInteresting() {
        if label.text == "ABC" {
            label.text = "DEF"
        }
        else {
            label.text = "ABC"
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
