//
//  ViewController.swift
//  Pirates
//
//  Created by Max Altena on 17/09/2018.
//  Copyright © 2018 Max Altena. All rights reserved.
//


import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    override func viewDidLoad() {
        super.viewDidLoad()
        downloadJSON()
    }

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(pirates.count)
        return pirates.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    }
}
