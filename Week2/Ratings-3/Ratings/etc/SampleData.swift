//
//  SampleData.swift
//  Ratings
//
//  Created by Max Altena on 07/09/2018.
//  Copyright © 2018 Max Altena. All rights reserved.
//

import Foundation

final class SampleData {
    
    static func generatePlayersData() -> [Player] {
        return [
            Player(name: "Bill Evans", game: "Tic-Tac-Toe", rating: 4),
            Player(name: "Oscar Peterson", game: "Spin the Bottle", rating: 5),
            Player(name: "Dave Brubeck", game: "Texas Hold 'em Poker", rating: 2),
            Player(name: "Taylor Howerton", game: "Chess", rating: 3),
            Player(name: "Tommie McNicholas", game: "Angry Birds", rating: 1),
            Player(name: "Ervin Gullett", game: "Russian Roulette", rating: 5),
            Player(name: "Cordell Spiva", game: "Chess", rating: 1),
            Player(name: "Mertie Pilgrim", game: "Texas Hold 'em Poker", rating: 4)
        ]
    }
}
