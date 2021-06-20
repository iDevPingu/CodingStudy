//
//  SNSFeedCell.swift
//  Campers_Sample
//
//  Created by Ick on 2021/06/20.
//

import UIKit

class SNSFeedCell: UICollectionViewCell {
    
    static let identifier = "SNSFeedCell"
    
    @IBOutlet weak var imageViewProfile: UIImageView!
    @IBOutlet weak var labelNickname: UILabel!
    @IBOutlet weak var imageViewFeed: UIImageView!
    @IBOutlet weak var buttonLike: UIButton!
    @IBOutlet weak var buttonMessage: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.imageViewProfile.layer.cornerRadius = self.imageViewProfile.bounds.width / 2.0
    }
    
    func configure() {
        self.imageViewProfile.image = UIImage(named: "Pingu")
        self.labelNickname.text = "Pingu"
        self.imageViewFeed.image = UIImage(named: "Camping")
    }
}
