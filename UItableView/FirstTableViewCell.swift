//
//  FirstTableViewCell.swift
//  UItableView
//
//  Created by 高彬 on 15/9/1.
//  Copyright (c) 2015年 erweimashengchengqi. All rights reserved.
//

import UIKit

class FirstTableViewCell: UITableViewCell {
 
        
    var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
        
//        ageLabel = UILabel(frame: CGRectMake(100, 10, 100, 20))
//        
//        ageLabel.font.fontWithSize(12)
//        ageLabel.textColor = UIColor.yellowColor()
//        
//        self.addSubview(ageLabel)
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: UITableViewCellStyle.Default, reuseIdentifier: String?())
        nameLabel = UILabel(frame: CGRectMake(20, 10, 100, 20))
        nameLabel.font = UIFont.boldSystemFontOfSize(20)
        nameLabel.textColor = UIColor.redColor()
        nameLabel.userInteractionEnabled = false;
        self.addSubview(nameLabel)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
