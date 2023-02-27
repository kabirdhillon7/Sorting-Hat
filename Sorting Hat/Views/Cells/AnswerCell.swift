//
//  AnswerCell.swift
//  Sorting Hat
//
//  Created by Kabir Dhillon on 2/26/23.
//

import UIKit

class AnswerCell: UITableViewCell {
    
    @IBOutlet weak var answerLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
