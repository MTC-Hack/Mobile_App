//
//  CrashCell.swift
//  MTC-Rat
//
//  Created by Кирилл Володин on 29.09.17.
//  Copyright © 2017 Кирилл Володин. All rights reserved.
//

import UIKit

class CrashCell: UITableViewCell {

    @IBOutlet weak var statusImage: UIImageView!
    @IBOutlet weak var codeLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var shortDescription: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
