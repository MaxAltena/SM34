//
//  Pirate.swift
//  Pirates
//
//  Created by Max Altena on 17/09/2018.
//  Copyright © 2018 Max Altena. All rights reserved.
//

import UIKit

class PirateCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var lifeLabel: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
