//
//  PirateViewController.swift
//  Pirates
//
//  Created by Max Altena on 17/09/2018.
//  Copyright © 2018 Max Altena. All rights reserved.
//

import UIKit

class PirateViewController: UIViewController {
    @IBOutlet weak var piratenameLabel: UILabel!
    @IBOutlet weak var pirateimgView: UIImageView!
    @IBOutlet weak var piratelifeLabel: UILabel!
    @IBOutlet weak var pirateyearsLabel: UILabel!
    @IBOutlet weak var piratecountryLabel: UILabel!
    @IBOutlet weak var piratecommentsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        piratenameLabel.text = pirates[myIndex].name
        if  let imageURL = URL(string: pirates[myIndex].img!) {
            DispatchQueue.global().async {
                let data = try? Data(contentsOf: imageURL)
                if let data = data {
                    let image = UIImage(data: data)
                    DispatchQueue.main.async {
                        self.pirateimgView.image = image
                    }
                }
            }
        }
        piratelifeLabel.text = pirates[myIndex].life
        pirateyearsLabel.text = pirates[myIndex].years_active
        piratecountryLabel.text = pirates[myIndex].country_of_origin
        piratecommentsLabel.text = pirates[myIndex].comments
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
