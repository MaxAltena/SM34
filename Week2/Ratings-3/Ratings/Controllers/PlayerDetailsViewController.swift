//
//  PlayerDetailsViewController.swift
//  Ratings
//
//  Created by Max Altena on 07/09/2018.
//  Copyright © 2018 Max Altena. All rights reserved.
//

import UIKit

class PlayerDetailsViewController: UITableViewController {

    // MARK: - Properties
    var player: Player?
    var game: String = "Chess" {
        didSet {
            detailLabel.text = game
        }
    }
    var rating: String = "2" {
        didSet {
            detailLabel2.text = rating
        }
    }
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var detailLabel2: UILabel!
    
    // MARK: - Initializers
    required init?(coder aDecoder: NSCoder) {
        print("init PlayerDetailsViewController")
        super.init(coder: aDecoder)
    }
    
    deinit {
        print("deinit PlayerDetailsViewController")
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SavePlayerDetail" {
            var playerName = nameTextField.text
            if playerName?.isEmpty ?? false {
                playerName = "Unknown player"
            }
            player = Player(name: playerName, game: game, rating: Int(rating)!)
        }
        
        if segue.identifier == "PickGame",
            let gamePickerViewController = segue.destination as? GamePickerViewController {
            gamePickerViewController.selectedGame = game
        }
        
        if segue.identifier == "PickRating",
            let ratingPickerViewController = segue.destination as?  RatingPickerViewController {
            ratingPickerViewController.selectedRating = rating
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

// MARK: - IBActions
extension PlayerDetailsViewController {
    
    @IBAction func unwindWithSelectedGame(segue: UIStoryboardSegue) {
        if let gamePickerViewController = segue.source as? GamePickerViewController,
            let selectedGame = gamePickerViewController.selectedGame {
            game = selectedGame
        }
    }
    
    @IBAction func unwindWithSelectedRating(segue: UIStoryboardSegue) {
        if let ratingPickerViewController = segue.source as? RatingPickerViewController,
            let selectedRating = ratingPickerViewController.selectedRating {
            rating = selectedRating
        }
    }
}


// MARK: - UITableViewDelegate
extension PlayerDetailsViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            nameTextField.becomeFirstResponder()
        }
    }
}
