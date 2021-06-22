//
//  SNSPage.swift
//  Campers_Sample
//
//  Created by Ick on 2021/06/20.
//

import UIKit
extension UIColor {
    convenience init(red: Int, green: Int, blue: Int, a: Int = 0xFF) {
        self.init(
            red: CGFloat(red) / 255.0,
            green: CGFloat(green) / 255.0,
            blue: CGFloat(blue) / 255.0,
            alpha: CGFloat(a) / 255.0
        )
    }
    
    convenience init(argb: Int) {
        self.init(
            red: (argb >> 16) & 0xFF,
            green: (argb >> 8) & 0xFF,
            blue: argb & 0xFF,
            a: (argb >> 24) & 0xFF
        )
    }
}
class SNSPage: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setCollectionView()
    }
    
    func setCollectionView() {
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.collectionView.register(UINib(nibName: SNSFeedCell.identifier, bundle: nil), forCellWithReuseIdentifier: SNSFeedCell.identifier)
        self.collectionView.backgroundColor = UIColor(argb: 0xFFE3FCED)
    }
}

extension SNSPage: UICollectionViewDelegate {
    
}

extension SNSPage: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = self.collectionView.dequeueReusableCell(withReuseIdentifier: SNSFeedCell.identifier, for: indexPath) as? SNSFeedCell else { return UICollectionViewCell() }
        cell.configure()
        cell.delegate = self
        return cell
    }
    
    
}

extension SNSPage: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.collectionView.bounds.width, height: 400)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
}

extension SNSPage: SNSFeedCellDelegate {
    func clickPlanner() {
        self.present(CampingPlannerPage.new(isForWrite: false), animated: true, completion: nil)
    }
}
