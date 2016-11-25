//
//  TableViewCell.swift
//  DessertTable
//
//  Created by Yan Malinovsky on 25.11.16.
//  Copyright © 2016 Yan Malinovsky. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
    
    
    @IBOutlet var cellImageView: UIImageView!
    
    @IBOutlet var cellLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
