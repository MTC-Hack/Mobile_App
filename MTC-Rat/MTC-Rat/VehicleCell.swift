//
//  VehicleCell.swift
//  MTC-Rat
//
//  Created by Кирилл Володин on 28.09.17.
//  Copyright © 2017 Кирилл Володин. All rights reserved.
//

import UIKit

class VehicleCell: UITableViewCell {

    @IBOutlet weak var brandImage: UIImageView!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var modelLabel: UILabel!
    @IBOutlet weak var switchVehicle: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
