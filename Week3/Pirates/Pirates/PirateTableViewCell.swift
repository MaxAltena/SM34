//
//  PirateTableViewCell.swift
//  Pirates
//
//  Created by Max Altena on 14/09/2018.
//  Copyright © 2018 Max Altena. All rights reserved.
//

import UIKit

class PirateTableViewCell: UITableViewCell {
    // MARK: Properties
    @IBOutlet weak var pirateIMG: UIImageView!
    @IBOutlet weak var pirateName: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
