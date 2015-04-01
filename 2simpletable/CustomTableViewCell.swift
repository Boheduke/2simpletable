//
//  CustomTableViewCell.swift
//  2simpletable
//
//  Created by Thomas Lasky on 15/4/1.
//  Copyright (c) 2015年 Thomas Lasky. All rights reserved.
//

import UIKit





class CustomTableViewCell: UITableViewCell {
   
    @IBOutlet weak var nameLabel:UILabel!
    @IBOutlet weak var locationLabel:UILabel!
    @IBOutlet weak var typeLabel:UILabel!
    @IBOutlet weak var thumbnailImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    

}
