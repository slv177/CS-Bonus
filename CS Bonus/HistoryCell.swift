//
//  HistoryCell.swift
//  CS Bonus
//
//  Created by SS on 30/09/2018.
//  Copyright © 2018 SS. All rights reserved.
//

import UIKit

class HistoryCell: UITableViewCell {
    
    @IBOutlet weak var direction: UITextView!
    @IBOutlet weak var remoteAdress: UITextView!
    @IBOutlet weak var time: UITextView!
    @IBOutlet weak var amount: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
