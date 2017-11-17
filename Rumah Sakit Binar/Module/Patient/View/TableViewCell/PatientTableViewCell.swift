//
//  PatientTableViewCell.swift
//  Rumah Sakit Binar
//
//  Created by Rio Swarawan on 11/17/17.
//  Copyright © 2017 Rio Swarawan. All rights reserved.
//

import UIKit

class PatientTableViewCell: UITableViewCell {

    @IBOutlet weak var photoImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var sickLabel: UILabel!
    @IBOutlet weak var doctorLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func loadInfo(_ patient: Patient) {
        self.photoImage.loadFromUrl(url: patient.photo)
        self.nameLabel.text = patient.name
        self.sickLabel.text = patient.sick
        self.doctorLabel.text = patient.doctorName
    }
}
