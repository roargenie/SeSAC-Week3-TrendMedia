//
//  ShoppingTableViewCell.swift
//  SeSAC Week3 TrendMedia
//
//  Created by 이명진 on 2022/07/19.
//

import UIKit

class ShoppingTableViewCell: UITableViewCell {
    
    @IBOutlet weak var checkBoxButton: UIButton!
    
    @IBOutlet weak var bookMarkButton: UIButton!
    
    @IBOutlet weak var itemLabel: UILabel!
    
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
