//
//  RateTableViewCell.swift
//  act10.1
//
//  Created by Alumno IDS on 13/03/18.
//  Copyright © 2018 Alumno IDS. All rights reserved.
//

import UIKit

class RateTableViewCell: UITableViewCell {

    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var Resume: UILabel!
    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var Note: UILabel!
    @IBOutlet weak var Date: UIDatePicker!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
