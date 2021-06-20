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

    func configure() {
        self.imageView.image = UIImage(named: "Pingu")
    }
}
