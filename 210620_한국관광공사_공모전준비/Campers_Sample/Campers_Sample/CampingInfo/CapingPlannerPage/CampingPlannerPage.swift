//
//  CampingPlanerPage.swift
//  Campers_Sample
//
//  Created by Ick on 2021/06/22.
//

import UIKit

extension CampingPlannerPage {
    static func new(isForWrite: Bool) -> CampingPlannerPage {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: CampingPlannerPage.identifier) as! CampingPlannerPage
        vc.isForWrite = isForWrite
        return vc
    }
}

class CampingPlannerPage: UIViewController {
    
    static let identifier = "CampingPlanerPage"
        
    var isForWrite: Bool = true
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var labelInfo: UILabel!
    @IBOutlet weak var buttonPlus: UIButton!
    @IBOutlet weak var buttonShare: UIButton!
    @IBAction func clickShare(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var imageViewLike: UIImageView!
    @IBOutlet weak var labelLikeCount: UILabel!
    @IBOutlet weak var buttonJoin: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setCollectionView()
        self.setUserInterface()
        self.buttonShare.layer.cornerRadius = 10
        self.buttonJoin.layer.cornerRadius = 7
    }
    
    func setUserInterface() {
        if self.isForWrite {
            self.buttonPlus.isHidden = false
            self.buttonShare.isHidden = false
            self.imageViewLike.isHidden = true
            self.labelLikeCount.isHidden = true
            self.buttonJoin.isHidden = true
        } else {
            self.buttonPlus.isHidden = true
            self.buttonShare.isHidden = true
            self.imageViewLike.isHidden = false
            self.labelLikeCount.isHidden = false
            self.buttonJoin.isHidden = false
        }
    }
    func setCollectionView() {
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.collectionView.register(UINib(nibName: CampingPlanCell.identifier, bundle: nil), forCellWithReuseIdentifier: CampingPlanCell.identifier)
    }
}

extension CampingPlannerPage: UICollectionViewDelegate {
    
}

extension CampingPlannerPage: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CampingPlanCell.identifier, for: indexPath) as! CampingPlanCell
        cell.configure(item: indexPath.item)
        return cell
    }
    
    
}

extension CampingPlannerPage: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.collectionView.bounds.width, height: 50)
    }
}
