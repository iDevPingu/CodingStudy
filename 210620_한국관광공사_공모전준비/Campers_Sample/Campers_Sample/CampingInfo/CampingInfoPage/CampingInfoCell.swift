//
//  CampingInfoCell.swift
//  Campers_Sample
//
//  Created by Ick on 2021/06/22.
//

import UIKit

class CampingInfoCell: UICollectionViewCell {
    static let identifier = "CampingInfoCell"
    
    @IBOutlet weak var imageViewPlace: UIImageView!
    @IBOutlet weak var labelPlaceName: UILabel!
    @IBOutlet weak var labelPlaceAddress: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()

    }
    
    func configure1() {
        self.labelPlaceName.text = "가평황토은글램핑"
        self.labelPlaceAddress.text = "경기 가평군 설악면 장수로79번길 63-18"
        self.imageViewPlace.image = UIImage(named: "CampingExample1")
    }
    func configure2() {
        self.labelPlaceName.text = "가평 운악홀리데이 캠핑장"
        self.labelPlaceAddress.text = "경기 가평군 조종면 운악청계로 424\n가평운악홀리데이 카라반파크"
        self.imageViewPlace.image = UIImage(named: "Camping")
    }
}
