//
//  UsedTradeCell.swift
//  Campers_Sample
//
//  Created by Ick on 2021/06/24.
//

import UIKit

class UsedTradeCell: UICollectionViewCell {
    static let identifier = "UsedTradeCell"
    
    @IBOutlet weak var imageViewItem: UIImageView!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    func configure(item: Int) {
        if item % 5 == 0 {
            self.imageViewItem.image = UIImage(named: "tent")
            self.labelTitle.text = "텐트 팔아요~"
            self.labelPrice.text = "55000원"
        } else if item % 5 == 1 {
            self.imageViewItem.image = UIImage(named: "burnner")
            self.labelTitle.text = "버너 팔아요!"
            self.labelPrice.text = "15000원"
        } else if item % 5 == 2 {
            self.imageViewItem.image = UIImage(named: "grill")
            self.labelTitle.text = "바베큐 그릴 팝니다"
            self.labelPrice.text = "35000원"
        } else if item % 5 == 3 {
            self.imageViewItem.image = UIImage(named: "frypan")
            self.labelTitle.text = "후라이팬 팔아요"
            self.labelPrice.text = "10000원"
        } else if item % 5 == 4 {
            self.imageViewItem.image = UIImage(named: "chair")
            self.labelTitle.text = "캠핑용 의자 팔아요"
            self.labelPrice.text = "10000원"
        }
    }
}
