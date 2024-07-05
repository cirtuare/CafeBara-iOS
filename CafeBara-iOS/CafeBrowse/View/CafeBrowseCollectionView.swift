//
//  CafeBrowseCollectionView.swift
//  CafeBara-iOS
//
//  Created by 이수민 on 7/5/24.
//

import UIKit

import Then

final class CafeBrowseCollectionView: UICollectionView {
    
    // MARK: - UI Properties
    
    static var cafeBrowseCollectionViewLayout = UICollectionViewFlowLayout()
    
    
    // MARK: - Properties
    
    private var cafeInfoData: [CafeInfoModel] = [] {
        didSet {
            self.reloadData()
        }
    }
    // MARK: - LifeCycle
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        let flowLayout = CafeBrowseCollectionView.cafeBrowseCollectionViewLayout
        super.init(frame: frame, collectionViewLayout: flowLayout)
        self.backgroundColor = UIColor(resource: .darkGray)
        register()
        setDelegate()
        setStyle()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setStyle() {
        
        CafeBrowseCollectionView.cafeBrowseCollectionViewLayout.do {
            $0.scrollDirection = .vertical
            $0.minimumLineSpacing = 0
        }
    }
    
    func setUpBindings(cafeInfoData : [CafeInfoModel]) {
        self.cafeInfoData = cafeInfoData
    }

}


// MARK: - CollectionView Methods

extension CafeBrowseCollectionView {
    private func register() {
        self.register(CafeBrowseCollectionViewCell.self, forCellWithReuseIdentifier: "CafeBrowseCollectionViewCell")
    }
    
    private func setDelegate() {
        self.delegate = self
        self.dataSource = self
    }
    
}

// MARK: - UICollectionViewDelegateFlowLayout

extension CafeBrowseCollectionView : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (UIScreen.main.bounds.width / 2) - 24, height: 240)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 16
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 4, left: 16, bottom: 0, right: 16)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 16
    }
    
    
    
}

// MARK: - UICollectionViewDataSource

extension CafeBrowseCollectionView : UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cafeInfoData.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CafeBrowseCollectionViewCell", for: indexPath) as? CafeBrowseCollectionViewCell else { return UICollectionViewCell() }
        cell.dataBind(cafeInfoData[indexPath.item], indexPath.item)
        return cell
    }
}
