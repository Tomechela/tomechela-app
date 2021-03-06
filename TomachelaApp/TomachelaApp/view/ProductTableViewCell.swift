//
//  ProductTableViewCell.swift
//  TomachelaApp
//
//  Created by Carlos Santiago Cruz on 20/10/18.
//  Copyright © 2018 Oliver Jordy Pérez Escamilla. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    @IBOutlet var productNameLabel: UILabel!
    @IBOutlet var valueLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        productNameLabel.adjustsFontForContentSizeCategory = true
        valueLabel.adjustsFontForContentSizeCategory = true
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
