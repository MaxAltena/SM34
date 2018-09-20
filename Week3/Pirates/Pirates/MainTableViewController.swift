//
//  MainTableViewController.swift
//  Pirates
//
//  Created by Max Altena on 17/09/2018.
//  Copyright © 2018 Max Altena. All rights reserved.
//
//  Project was made when following a tutorial
//  YouTube:    https://www.youtube.com/watch?v=d9LtFtia4vc
//

import UIKit

var pirates = [Pirate]()
var myIndex = 0

class MainTableViewController: UITableViewController {
    final let url = "https://static.maxaltena.com/web/data/pirates.json"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        downloadJSON()
        tableView.tableFooterView = UIView()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pirates.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PirateCell") as? PirateCell else { return UITableViewCell() }
     
        cell.nameLabel.text = pirates[indexPath.row].name
        cell.lifeLabel.text = pirates[indexPath.row].life
        let imgURL = URL(string: pirates[indexPath.row].img!)
        let data = try? Data(contentsOf: imgURL!)
        
        if let imageData = data {
            let image = UIImage(data: imageData)
            cell.imgView.image = image
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "pirateSegue", sender: self)
    }

    func downloadJSON() {
        guard let downloadUrl = URL(string: url) else { return }
        URLSession.shared.dataTask(with: downloadUrl) {data, urlResponse, error in
            guard let data = data, error == nil, urlResponse != nil else {
                print("Something went wrong")
                return
            }
            do {
                let downloadedPirates = try JSONDecoder().decode(Pirates.self, from: data)
                pirates = downloadedPirates.pirates
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            } catch let jsonError {
                print("Error serializing json:", jsonError)
            }
        }.resume()
    }
}
