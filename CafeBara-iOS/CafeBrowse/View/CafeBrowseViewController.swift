//
//  ViewController.swift
//  CafeBara-iOS
//
//  Created by 이수민 on 7/5/24.
//

import UIKit

import SnapKit
import Then

class CafeBrowseViewController: UIViewController {
    
    // MARK: - UI Properties
    
    
    private var locationLabel = UILabel()
    
    private var filterView = UIView()
    
    private var cafeBrowseCollectionView = CafeBrowseCollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    
    
    // MARK: - Properties
    
    private let cafeBrowseViewModel = CafeBrowseViewModel()
    
    private lazy var cafeBrowseDummyData = cafeBrowseViewModel.cafeBrowseDummyData
    
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setHierarchy()
        setLayout()
        setStyle()
    }
    
    func setHierarchy() {
        self.view.addSubviews(locationLabel, filterView, cafeBrowseCollectionView)
    }
    
    func setLayout() {
        locationLabel.snp.makeConstraints{
            $0.top.equalToSuperview().inset(50)
            $0.horizontalEdges.equalToSuperview().inset(16)
            $0.height.equalTo(50)
        }
        
        filterView.snp.makeConstraints {
            $0.top.equalTo(locationLabel.snp.bottom).offset(10)
            $0.horizontalEdges.equalToSuperview().inset(16)
            $0.height.equalTo(100)
        }
        
        cafeBrowseCollectionView.snp.makeConstraints {
            $0.top.equalTo(filterView.snp.bottom).offset(20)
            $0.horizontalEdges.equalToSuperview()
            $0.bottom.equalToSuperview().inset(20)
        }
    }
    
    func setStyle() {
        self.view.backgroundColor = .white
        self.navigationController?.navigationBar.isHidden = true
        
        locationLabel.do {
            $0.font = .systemFont(ofSize: 20, weight: .bold)
            $0.textColor = .black
            $0.textAlignment = .center
            $0.text = "📍 지하철 2호선 서울대입구역"
        }
        
        filterView.do {
            $0.backgroundColor = .blue
        }
        
        cafeBrowseCollectionView.do {
            $0.backgroundColor = .white
            $0.setUpBindings(cafeInfoData: cafeBrowseDummyData)
        }

    }

}

// MARK: - Private Method

private extension CafeBrowseViewController {
    
    
}

