//
//  SNSFeedCell.swift
//  Campers_Sample
//
//  Created by Ick on 2021/06/20.
//

import UIKit

protocol SNSFeedCellDelegate: class {
    func clickPlanner()
}

class SNSFeedCell: UICollectionViewCell {
    
    static let identifier = "SNSFeedCell"
    
    weak var delegate: SNSFeedCellDelegate?
    
    @IBOutlet weak var imageViewProfile: UIImageView!
    @IBOutlet weak var labelNickname: UILabel!
    @IBOutlet weak var imageViewFeed: UIImageView!
    @IBOutlet weak var buttonLike: UIButton!
    @IBOutlet weak var buttonMessage: UIButton!
    @IBOutlet weak var labelContext: UILabel!
    @IBOutlet weak var buttonPlanner: UIButton!
    @IBAction func clickPlanner(_ sender: UIButton) {
        self.delegate?.clickPlanner()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        self.imageViewProfile.layer.cornerRadius = self.imageViewProfile.bounds.width / 2.0
        self.buttonPlanner.layer.cornerRadius = 5
    }
    
    func configure() {
        self.imageViewProfile.image = UIImage(named: "Pingu")
        self.labelNickname.text = "Campers"
        self.imageViewFeed.image = UIImage(named: "Camping")
        self.labelContext.text = "#캠핑, #글램핑, #캠퍼스 #좋아\n가평 푸른숲 캠핑장 다녀왔어요! ㅎㅎ"
    }
}
