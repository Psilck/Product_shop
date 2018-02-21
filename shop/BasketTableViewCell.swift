//
//  BasketTableViewCell.swift
//  shop
//
//  Created by Артем Валерьевич on 21.02.2018.
//  Copyright © 2018 Артем Валерьевич. All rights reserved.
//

import UIKit

class BasketTableViewCell: UITableViewCell {

    @IBOutlet weak var imageBasket: UIImageView!
    @IBOutlet weak var infoProductBasket: UILabel!
    @IBOutlet weak var scoreProduct: UIButton!
    @IBOutlet weak var sumProductBasket: UILabel!
    
    
    
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
