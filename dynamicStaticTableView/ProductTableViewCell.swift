//
//  ProductTableViewCell.swift
//  dynamicStaticTableView
//
//  Created by Agust Lofianto on 4/20/16.
//  Copyright © 2016 xiang. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    @IBOutlet weak var textLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
