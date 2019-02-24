//
//  PostCell.swift
//  CDWP1.2
//
//  Created by Kenneth W Jackson on 2/10/19.
//  Copyright © 2019 Connections Digital. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {
  
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
