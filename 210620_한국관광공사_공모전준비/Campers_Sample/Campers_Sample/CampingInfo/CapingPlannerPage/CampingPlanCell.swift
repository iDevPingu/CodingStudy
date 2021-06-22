//
//  CampingPlanCell.swift
//  Campers_Sample
//
//  Created by Ick on 2021/06/22.
//

import UIKit

class CampingPlanCell: UICollectionViewCell {
    
    static let identifier = "CampingPlanCell"
    
    @IBOutlet weak var viewBackground: UIView!
    @IBOutlet weak var labelPlan: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure(item: Int) {
        self.viewBackground.layer.cornerRadius = 15
        if item % 4 == 0 {
            self.labelPlan.text = "축령산 오션파크"
        } else if item % 4 == 1 {
            self.labelPlan.text = "가평 레일바이크"
        } else if item % 4 == 2 {
            self.labelPlan.text = "가평 아홉마지기마을"
        } else if item % 4 == 3 {
            self.labelPlan.text = "가평 연인산마을"
        } 
    }
}
