//
//  PirateTableViewController.swift
//  Pirates
//
//  Created by Max Altena on 14/09/2018.
//  Copyright © 2018 Max Altena. All rights reserved.
//

import UIKit

struct Pirate: Decodable {
    let name: String?
    let img: String?
    let life: String?
    let years_active: String?
    let country_of_origin: String?
    let comments: String?
}

class PirateTableViewController: UITableViewController {
    // MARK: Properties
    var pirates = [Pirate]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadPirates()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(self.pirates.count)
        return self.pirates.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "PirateTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? PirateTableViewCell  else {
            fatalError("The dequeued cell is not an instance of PirateTableViewCell.")
        }
        let pirate = pirates[indexPath.row]
        cell.pirateName.text = pirate.name
        cell.pirateIMG.downloaded(from: pirate.img!)

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func loadPirates(){
        let jsonUrlString = "https://i371527.hera.fhict.nl/data/pirates.json"
        guard let url = URL(string: jsonUrlString) else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if error != nil {
                print("Error: \(error ?? "Some error value" as! Error)")
                return
            }
            
            guard let data = data else { return }
            
            do {
                self.pirates = try JSONDecoder().decode([Pirate].self, from: data)
                print(self.pirates.count, " - JSON")
            } catch let jsonError {
                print("Error serializing json: \(jsonError)")
            }
        }.resume()
    }
}

extension UIImageView {
    func downloaded(from url: URL, contentMode mode: UIView.ContentMode = .center) {
        contentMode = mode
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard
                let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
                let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                let data = data, error == nil,
                let image = UIImage(data: data)
                else { return }
            DispatchQueue.main.async() {
                self.image = image
            }
            }.resume()
    }
    func downloaded(from link: String, contentMode mode: UIView.ContentMode = .center) {
        guard let url = URL(string: link) else { return }
        downloaded(from: url, contentMode: mode)
    }
}
