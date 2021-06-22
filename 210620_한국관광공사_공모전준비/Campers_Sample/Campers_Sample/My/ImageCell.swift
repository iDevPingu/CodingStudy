//
//  ImageCell.swift
//  Campers_Sample
//
//  Created by Ick on 2021/06/20.
//

import UIKit

class ImageCell: UICollectionViewCell {
    static let identifier: String = "ImageCell"
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func configure(item: Int) {
        if item % 4 == 0 {
            self.imageView.image = UIImage(named: "Pingu")
        } else if item % 4 == 1 {
            self.imageView.image = UIImage(named: "Camping")
        } else if item % 4 == 2 {
            self.imageView.image = UIImage(named: "CampingExample1")
        } else if item % 4 == 3 {
            self.imageView.image = UIImage(named: "CampingExample2")
        }
    }
}
