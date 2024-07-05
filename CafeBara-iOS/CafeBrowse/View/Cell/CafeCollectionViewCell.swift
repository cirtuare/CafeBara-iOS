//
//  CafeCollectionViewCell.swift
//  CafeBara-iOS
//
//  Created by 이수민 on 7/5/24.
//

import UIKit

import SnapKit
import Then

class CafeBrowseCollectionViewCell: UICollectionViewCell {
    
    // MARK: - UI Properties
    
    private var nameLabel = UILabel()
    
    private var linkLabel = UILabel()
    
    private var categoryLabel = UILabel()
    
    private var timeButton = UIButton()
    
    private var americanoPriceButton = UIButton()
    
    private var congestionButton = UIButton()
    
    private var distanceButton = UIButton()
    
    private var wifiButton = UIButton()
    
    private var concentButton = UIButton()
    
    // MARK: - Properties
    
    var cafeItemRow: Int?
    
    let cellIdentifier = "CafeBrowseCollectionViewCell"
    
    // MARK: - LifeCycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setHierarchy()
        setLayout()
        setStyle()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setHierarchy() {
        self.addSubviews(nameLabel,
                              linkLabel,
                              categoryLabel,
                              timeButton,
                              americanoPriceButton,
                              congestionButton,
                              distanceButton,
                              wifiButton,
                              concentButton)
    }
    
    private func setLayout() {
        nameLabel.snp.makeConstraints {
            $0.top.equalToSuperview().inset(20)
            $0.leading.equalToSuperview().inset(16)
            $0.height.equalTo(21)
        }
        
        linkLabel.snp.makeConstraints {
            $0.top.equalTo(nameLabel.snp.bottom).offset(10)
            $0.leading.equalToSuperview().inset(16)
            $0.height.equalTo(21)
        }
        
        categoryLabel.snp.makeConstraints {
            $0.top.equalTo(linkLabel.snp.bottom).offset(10)
            $0.leading.equalToSuperview().inset(16)
            $0.height.equalTo(21)
        }
        
        timeButton.snp.makeConstraints {
            $0.top.equalTo(categoryLabel.snp.bottom).offset(10)
            $0.leading.equalToSuperview().inset(16)
            $0.height.equalTo(21)
        }
        
        americanoPriceButton.snp.makeConstraints {
            $0.top.equalTo(timeButton.snp.bottom).offset(10)
            $0.leading.equalToSuperview().inset(16)
            $0.height.equalTo(21)
        }
        
        congestionButton.snp.makeConstraints {
            $0.top.equalTo(americanoPriceButton.snp.bottom).offset(10)
            $0.leading.equalToSuperview().inset(16)
            $0.height.equalTo(21)
        }
        
        distanceButton.snp.makeConstraints {
            $0.top.equalTo(congestionButton.snp.bottom).offset(10)
            $0.leading.equalToSuperview().inset(16)
            $0.height.equalTo(21)
        }
        
        wifiButton.snp.makeConstraints {
            $0.top.equalTo(distanceButton.snp.bottom).offset(10)
            $0.leading.equalToSuperview().inset(16)
            $0.height.equalTo(21)
        }
        
        concentButton.snp.makeConstraints {
            $0.top.equalTo(wifiButton.snp.bottom).offset(10)
            $0.leading.equalToSuperview().inset(16)
            $0.height.equalTo(21)
        }
    }
    
    private func setStyle() {
        self.backgroundColor = UIColor.white
        
        nameLabel.do {
            $0.textColor = UIColor.black
            $0.font = UIFont.boldSystemFont(ofSize: 15)
        }
        
        linkLabel.do {
            $0.textColor = UIColor.blue
            $0.font = UIFont.systemFont(ofSize: 15)
        }
        
        categoryLabel.do {
            $0.textColor = UIColor.darkGray
            $0.font = UIFont.systemFont(ofSize: 15)
        }
        
        timeButton.do {
            $0.setTitleColor(UIColor.gray, for: .normal)
            $0.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        }
        
        americanoPriceButton.do {
            $0.setTitleColor(UIColor.brown, for: .normal)
            $0.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        }
        
        congestionButton.do {
            $0.setTitleColor(UIColor.red, for: .normal)
            $0.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        }
        
        distanceButton.do {
            $0.setTitleColor(UIColor.green, for: .normal)
            $0.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        }
        
        wifiButton.do {
            $0.setTitleColor(UIColor.purple, for: .normal)
            $0.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        }
        
        concentButton.do {
            $0.setTitleColor(UIColor.orange, for: .normal)
            $0.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        }
    }
}

extension CafeBrowseCollectionViewCell {
    func dataBind(_ cafeInfoData: CafeInfoModel, _ cafeItemRow: Int) {
        self.cafeItemRow = cafeItemRow
        self.nameLabel.text = cafeInfoData.name
        self.linkLabel.text = cafeInfoData.link
        self.categoryLabel.text = cafeInfoData.category
        self.timeButton.setTitle(cafeInfoData.time, for: .normal)
        if let americanoPrice = cafeInfoData.americanoPrice {
            self.americanoPriceButton.setTitle("\(americanoPrice)", for: .normal)
        } else {
            self.americanoPriceButton.setTitle("N/A", for: .normal)
        }
        if let congestion = cafeInfoData.congestion {
            self.congestionButton.setTitle("\(congestion)", for: .normal)
        } else {
            self.congestionButton.setTitle("N/A", for: .normal)
        }
        if let distance = cafeInfoData.distance {
            self.distanceButton.setTitle("\(distance)", for: .normal)
        } else {
            self.distanceButton.setTitle("N/A", for: .normal)
        }
        self.wifiButton.setTitle(cafeInfoData.wifi == true ? "Available" : "Not Available", for: .normal)
        self.concentButton.setTitle(cafeInfoData.concent == true ? "Available" : "Not Available", for: .normal)
    }
}
