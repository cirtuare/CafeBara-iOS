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
    
    private var topView = UIView()
    
    private let textLogoImageView = UIImageView()
    
    private var locationLabel = UILabel()
    
    private var filterView = UIView()
    
    private var allButton = UIButton()
    
    private var studyCafeButton = UIButton()
    
    private var gamsungCafeButton = UIButton()
    
    private var gasungbiCafeButton = UIButton()
    
    
    private var cafeBrowseCollectionView = CafeBrowseCollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    
    
    // MARK: - Properties
    
    private let cafeBrowseViewModel = CafeBrowseViewModel()
    
    private var filteredData: [CafeInfoModel] = []
    
    private var selectedButton: UIButton?
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setHierarchy()
        setLayout()
        setStyle()
        setActions()
        
        updateSelectedButton(allButton)
        cafeBrowseViewModel.updateCafeData = { [weak self] data in
            self?.filteredData = data
            self?.cafeBrowseCollectionView.setUpBindings(cafeInfoData: data)
            self?.cafeBrowseCollectionView.reloadData()
        }
        cafeBrowseViewModel.loadAllCafes()
    }
    
    func setHierarchy() {
        self.view.addSubviews(topView, filterView, cafeBrowseCollectionView)
        topView.addSubviews(textLogoImageView, locationLabel)
        filterView.addSubviews(allButton, studyCafeButton, gamsungCafeButton, gasungbiCafeButton)
    }
    
    func setLayout() {
        topView.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.horizontalEdges.equalToSuperview()
            $0.height.equalTo(100)
        }
        
        textLogoImageView.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(10)
            $0.width.equalTo(40)
            $0.height.equalTo(35)
            $0.bottom.equalToSuperview().inset(8)
        }
        
        locationLabel.snp.makeConstraints{
            $0.trailing.equalToSuperview().inset(10)
            $0.bottom.equalToSuperview().inset(8)
        }
        
        filterView.snp.makeConstraints {
            $0.top.equalTo(locationLabel.snp.bottom).offset(10)
            $0.horizontalEdges.equalToSuperview().inset(16)
            $0.height.equalTo(30)
        }
        
        allButton.snp.makeConstraints {
            $0.leading.equalToSuperview()
            $0.top.equalToSuperview().inset(8)
            $0.height.equalTo(25)
        }
        
        studyCafeButton.snp.makeConstraints {
            $0.leading.equalTo(allButton.snp.trailing).offset(12)
            $0.top.equalToSuperview().inset(8)
            $0.height.equalTo(25)
        }
        
        gamsungCafeButton.snp.makeConstraints {
            $0.leading.equalTo(studyCafeButton.snp.trailing).offset(12)
            $0.top.equalToSuperview().inset(8)
            $0.height.equalTo(25)
        }
        
        gasungbiCafeButton.snp.makeConstraints {
            $0.leading.equalTo(gamsungCafeButton.snp.trailing).offset(12)
            $0.top.equalToSuperview().inset(8)
            $0.height.equalTo(25)
        }
        
        cafeBrowseCollectionView.snp.makeConstraints {
            $0.top.equalTo(filterView.snp.bottom).offset(20)
            $0.horizontalEdges.equalToSuperview()
            $0.bottom.equalToSuperview().inset(90)
        }
    }
    
    func setStyle() {
        self.view.backgroundColor = .white
        self.navigationController?.navigationBar.isHidden = true
        
        topView.do {
            $0.backgroundColor = UIColor(resource: .deepGreen)
        }
        
        textLogoImageView.do {
            $0.image = UIImage(resource: .characterLogo)
            $0.clipsToBounds = true
            $0.contentMode = .scaleAspectFit
        }
        
        locationLabel.do {
            $0.font = .systemFont(ofSize: 18, weight: .bold)
            $0.textColor = UIColor(resource: .darkGray)
            $0.textAlignment = .right
            $0.text = "지하철 2호선 서울대입구역"
        }
        
        allButton.do {
            $0.setTitle("전체", for: .normal)
            $0.titleLabel?.font = UIFont.systemFont(ofSize: 12)
            $0.roundedButton(cornerRadius: 12, maskedCorners: [.layerMinXMinYCorner, .layerMinXMaxYCorner, .layerMaxXMinYCorner, .layerMaxXMaxYCorner])
            $0.contentEdgeInsets = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
        }
        
        studyCafeButton.do {
            $0.setTitle("# 공부하기 좋은", for: .normal)
            $0.titleLabel?.font = UIFont.systemFont(ofSize: 12)
            $0.setDefaultButton()
            $0.roundedButton(cornerRadius: 12, maskedCorners: [.layerMinXMinYCorner, .layerMinXMaxYCorner, .layerMaxXMinYCorner, .layerMaxXMaxYCorner])
            $0.contentEdgeInsets = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
        }
        
        gamsungCafeButton.do {
            $0.setTitle("# 감성 있는", for: .normal)
            $0.titleLabel?.font = UIFont.systemFont(ofSize: 12)
            $0.setDefaultButton()
            $0.roundedButton(cornerRadius: 12, maskedCorners: [.layerMinXMinYCorner, .layerMinXMaxYCorner, .layerMaxXMinYCorner, .layerMaxXMaxYCorner])
            $0.contentEdgeInsets = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
        }
        
        gasungbiCafeButton.do {
            $0.setTitle("# 가성비 있는", for: .normal)
            $0.titleLabel?.font = UIFont.systemFont(ofSize: 12)
            $0.setDefaultButton()
            $0.roundedButton(cornerRadius: 12, maskedCorners: [.layerMinXMinYCorner, .layerMinXMaxYCorner, .layerMaxXMinYCorner, .layerMaxXMaxYCorner])
            $0.contentEdgeInsets = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
        }
        
        cafeBrowseCollectionView.do {
            $0.backgroundColor = .white
            $0.setUpBindings(cafeInfoData: filteredData)
        }

    }
    
    func setActions() {
        allButton.addTarget(self, action: #selector(showAllCafes), for: .touchUpInside)
        studyCafeButton.addTarget(self, action: #selector(showStudyCafes), for: .touchUpInside)
        gamsungCafeButton.addTarget(self, action: #selector(showGamsungCafes), for: .touchUpInside)
        gasungbiCafeButton.addTarget(self, action: #selector(showGasungbiCafes), for: .touchUpInside)
    }
    
    @objc func showAllCafes() {
        cafeBrowseViewModel.loadAllCafes()
        updateSelectedButton(allButton)
    }
    
    @objc func showStudyCafes() {
        cafeBrowseViewModel.filterCafes(by: "# 공부하기 좋은")
        updateSelectedButton(studyCafeButton)
    }
    
    @objc func showGamsungCafes() {
        cafeBrowseViewModel.filterCafes(by: "# 감성 있는")
        updateSelectedButton(gamsungCafeButton)
    }
    
    @objc func showGasungbiCafes() {
        cafeBrowseViewModel.filterCafes(by: "# 가성비 있는")
        updateSelectedButton(gasungbiCafeButton)
    }
    
    func updateSelectedButton(_ selectedButton: UIButton) {
        self.selectedButton?.setDefaultButton()
        selectedButton.backgroundColor = UIColor(resource: .deepGreen).withAlphaComponent(0.8)
        selectedButton.setTitleColor(.white, for: .normal)
        self.selectedButton = selectedButton
    }

}

// MARK: - Private Method

private extension CafeBrowseViewController {
    
    
}

