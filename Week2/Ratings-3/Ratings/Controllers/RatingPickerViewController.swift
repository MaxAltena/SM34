//
//  RatingPickerViewController.swift
//  Ratings
//
//  Created by Max Altena on 07/09/2018.
//  Copyright © 2018 Max Altena. All rights reserved.
//

import UIKit

class RatingPickerViewController: UITableViewController {

    // MARK: - Properties
    var ratings = [
        "1",
        "2",
        "3",
        "4",
        "5"
    ]
    
    var selectedRating: String? {
        didSet {
            if let selectedRating = selectedRating,
                let index = ratings.index(of: selectedRating) {
                selectedRatingIndex = index
            }
        }
    }
    
    var selectedRatingIndex: Int?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard segue.identifier == "SaveSelectedRating",
            let cell = sender as? UITableViewCell,
            let indexPath = tableView.indexPath(for: cell) else {
                return
        }
        
        let index = indexPath.row
        selectedRating = ratings[index]
    }
    
}

// MARK: - UITableViewDataSource
extension RatingPickerViewController {
    
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        return ratings.count
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "RatingCell", for: indexPath)
        cell.textLabel?.text = ratings[indexPath.row]
        
        if indexPath.row == selectedRatingIndex {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }
        
        return cell
    }
    
}

// MARK: - UITableViewDelegate
extension RatingPickerViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        // Other row is selected - need to deselect it
        if let index = selectedRatingIndex {
            let cell = tableView.cellForRow(at: IndexPath(row: index, section: 0))
            cell?.accessoryType = .none
        }
        
        selectedRating = ratings[indexPath.row]
        
        // update the checkmark for the current row
        let cell = tableView.cellForRow(at: indexPath)
        cell?.accessoryType = .checkmark
    }
}

