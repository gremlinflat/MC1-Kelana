//
//  SearchTableViewCell.swift
//  kelana
//
//  Created by Nabilla Azarine on 12/04/22.
//

import UIKit

class SearchTableViewCell: UITableViewCell {

    @IBOutlet weak var imgDest: UIImageView!
    @IBOutlet weak var destLbl: UILabel!
    @IBOutlet weak var locLbl: UILabel!
    @IBOutlet weak var hrLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
