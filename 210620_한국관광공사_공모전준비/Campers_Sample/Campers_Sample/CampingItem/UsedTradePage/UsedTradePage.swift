//
//  UsedTradePage.swift
//  Campers_Sample
//
//  Created by Ick on 2021/06/24.
//

import UIKit

class UsedTradePage: UIViewController {
    static let identifier = "UsedTradePage"
    
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setCollectionView()
    }

    func setCollectionView() {
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.collectionView.register(UINib(nibName: UsedTradeCell.identifier, bundle: nil), forCellWithReuseIdentifier: UsedTradeCell.identifier)
    }
}

extension UsedTradePage: UICollectionViewDelegate {
    
}

extension UsedTradePage: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: UsedTradeCell.identifier, for: indexPath) as! UsedTradeCell
        cell.configure(item: indexPath.item)
        return cell
    }
}

extension UsedTradePage: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.collectionView.bounds.width, height: 140)
    }
}
