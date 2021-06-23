//
//  CampingInfoPage.swift
//  Campers_Sample
//
//  Created by Ick on 2021/06/20.
//

import UIKit

class CampingInfoPage: UIViewController {

    @IBOutlet weak var buttonCity: UIButton!
    @IBOutlet weak var buttonPlaner: UIButton!
    @IBAction func clickPlaner(_ sender: UIButton) {
        self.present(CampingPlannerPage.new(isForWrite: true), animated: true, completion: nil)
    }
    @IBOutlet weak var buttonMap: UIButton!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setCollectionView()
        self.setButtons()
    }
    
    func setCollectionView() {
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.collectionView.register(UINib(nibName: CampingInfoCell.identifier, bundle: nil), forCellWithReuseIdentifier: CampingInfoCell.identifier)
    }
    
    func setButtons() {
        self.buttonCity.setTitleColor(.darkGray, for: .normal)
        self.buttonPlaner.setTitleColor(.darkGray, for: .normal)
        self.buttonMap.setTitleColor(.darkGray, for: .normal)
        
        self.buttonCity.layer.cornerRadius = 7
        self.buttonPlaner.layer.cornerRadius = 7
        self.buttonMap.layer.cornerRadius = 7
        
        self.buttonCity.backgroundColor = .lightGray
        self.buttonPlaner.backgroundColor = .lightGray
        self.buttonMap.backgroundColor = .lightGray
    }
}

extension CampingInfoPage: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = CampingInfoDetailPage.new()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
}

extension CampingInfoPage: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CampingInfoCell.identifier, for: indexPath) as? CampingInfoCell else { return UICollectionViewCell() }
        if indexPath.item % 2 == 0 {
            cell.configure1()
        } else {
            cell.configure2()
        }
        return cell
    }
}

extension CampingInfoPage: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.collectionView.bounds.width, height: 340)
    }
}
