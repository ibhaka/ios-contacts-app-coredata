//
//  ContactCellTableViewCell.swift
//  Contacts-app
//
//  Created by İbrahim Halil Kalkan on 15.11.2024.
//

import UIKit

class ContactCellTableViewCell: UITableViewCell {

    @IBOutlet weak var personTextLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
