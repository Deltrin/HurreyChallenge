//
//  StudentTableViewCell.swift
//  HurreyChallenge
//
//  Created by Deltrin Sam on 20/04/22.
//

import UIKit

class StudentTableViewCell: UITableViewCell {
    
    @IBOutlet var studentName: UILabel!
    @IBOutlet var studentEmail: UIButton!
    @IBOutlet var studentMobile: UIButton!
    @IBOutlet var studentLocation: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
