//
//  Pirate.swift
//  Pirates
//
//  Created by Max Altena on 17/09/2018.
//  Copyright © 2018 Max Altena. All rights reserved.
//

import UIKit

struct Pirates: Decodable {
    let pirates: [Pirate]
}

struct Pirate: Decodable {
    let name: String?
    let img: String?
    let life: String?
    let years_active: String?
    let country_of_origin: String?
    let comments: String?
}
