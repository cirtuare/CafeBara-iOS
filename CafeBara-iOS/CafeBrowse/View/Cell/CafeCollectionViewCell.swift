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
    private var cellContentView = UIView()
    
    private var imageView = UIImageView()
    
    private var nameLabel = UILabel()
    
    private var distanceLabel = UILabel()
    
    private var categoryLabel = UILabel()
    
    private var timeButton = UIButton()
    
    private var americanoPriceButton = UIButton()
    
    private var wifiButton = UIButton()
    
    private var concentButton = UIButton()
    
    private var congestionImageView = UIImageView()
    
    private var congestionLabel = UILabel()
    
    
    // MARK: - Properties
    
    var cafeItemRow: Int?
    var cafeURL: String?
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
        self.addSubviews(cellContentView)
        
        self.contentView.addSubviews(imageView,
                         nameLabel,
                          categoryLabel,
                          timeButton,
                          americanoPriceButton,
                          congestionImageView,
                         congestionLabel,
                          distanceLabel,
                          wifiButton,
                          concentButton)
        
    }
    
    private func setLayout() {
        contentView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        imageView.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.horizontalEdges.equalToSuperview()
            $0.height.equalTo((UIScreen.main.bounds.width / 2) - 40)
        }
        
        nameLabel.snp.makeConstraints {
            $0.top.equalTo(imageView.snp.bottom).offset(8)
            $0.leading.equalToSuperview().inset(8)
            $0.trailing.equalToSuperview().inset(40)
            $0.height.equalTo(40)
        }
        
        distanceLabel.snp.makeConstraints {
            $0.top.equalTo(nameLabel.snp.top)
            $0.trailing.equalToSuperview().inset(8)
            $0.height.equalTo(24)
        }
        
        categoryLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(10)
            $0.trailing.equalToSuperview()
            $0.width.equalTo(80)
            $0.height.equalTo(20)
        }
        
        wifiButton.snp.makeConstraints {
            $0.top.equalTo(distanceLabel.snp.bottom)
            $0.height.width.equalTo(16)
            $0.trailing.equalTo(concentButton.snp.leading)
        }
        
        concentButton.snp.makeConstraints {
            $0.top.equalTo(distanceLabel.snp.bottom)
            $0.height.width.equalTo(16)
            $0.trailing.equalToSuperview().inset(8)
        }
    
        americanoPriceButton.snp.makeConstraints {
            $0.top.equalTo(nameLabel.snp.bottom).offset(10)
            $0.height.equalTo(16)
            $0.leading.equalToSuperview().inset(8)
            $0.width.equalTo(50)
        }
        
        timeButton.snp.makeConstraints {
            $0.top.equalTo(americanoPriceButton.snp.top)
            $0.height.equalTo(americanoPriceButton.snp.height)
            $0.leading.equalTo(americanoPriceButton.snp.trailing).offset(4)
            $0.width.equalTo(90)
        }
        
        congestionImageView.snp.makeConstraints {
            $0.top.equalTo(imageView.snp.bottom)
            $0.horizontalEdges.equalToSuperview()
            $0.height.equalTo(5)
        }
        
        /*
        congestionLabel.snp.makeConstraints {
            $0.top.equalTo(congestionImageView.snp.bottom)
            $0.horizontalEdges.equalToSuperview()
            $0.bottom.equalToSuperview()
        }*/
        
    }
    
    private func setStyle() {
        self.layer.shadowColor = UIColor.systemGray.cgColor
        self.layer.shadowOpacity = 0.5
        self.layer.shadowRadius = 3

        self.contentView.layer.cornerRadius = 15
        self.contentView.layer.masksToBounds = true
        
        contentView.do {
            $0.backgroundColor = UIColor(resource: .backgroundGray)
        }
        nameLabel.do {
            $0.textColor = UIColor.black
            $0.font = UIFont.boldSystemFont(ofSize: 15)
            $0.numberOfLines = 2
        }
        
        distanceLabel.do {
            $0.textColor = UIColor(resource: .deepGreen)
            $0.font = UIFont.systemFont(ofSize: 10)
        }
        
        categoryLabel.do {
            $0.backgroundColor = UIColor(resource: .deepGreen)
            $0.textColor = .white
            $0.font = UIFont.boldSystemFont(ofSize: 10)
            $0.textAlignment = .center
        }
        
        timeButton.do {
            $0.setImage(UIImage(resource: .clockIcon), for: .normal)
            $0.setTitleColor(UIColor.black, for: .normal)
            $0.titleLabel?.font = UIFont.systemFont(ofSize: 10)
            $0.backgroundColor = UIColor(resource: .lightGreen)
            $0.roundedButton(cornerRadius: 8, maskedCorners: [.layerMinXMinYCorner, .layerMinXMaxYCorner, .layerMaxXMinYCorner, .layerMaxXMaxYCorner])
            $0.contentEdgeInsets = UIEdgeInsets(top: 3, left: 5, bottom: 3, right: 5) // 버튼 내부 여백 설정
            $0.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 70) // 이미지 위치 조정
            $0.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0) // 텍스트 위치 조정
            $0.contentHorizontalAlignment = .right
        }
        
        americanoPriceButton.do {
            $0.setImage(UIImage(resource: .coffeeIcon), for: .normal)
            $0.setTitleColor(UIColor.black, for: .normal)
            $0.titleLabel?.font = UIFont.systemFont(ofSize: 10)
            $0.backgroundColor = UIColor(resource: .lightGreen)
            $0.roundedButton(cornerRadius: 8, maskedCorners: [.layerMinXMinYCorner, .layerMinXMaxYCorner, .layerMaxXMinYCorner, .layerMaxXMaxYCorner])
            $0.contentEdgeInsets = UIEdgeInsets(top: 3, left: 5, bottom: 3, right: 5) // 버튼 내부 여백 설정
            $0.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 28) // 이미지 위치 조정
            $0.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0) // 텍스트 위치 조정
            $0.contentHorizontalAlignment = .right
        }
        
        wifiButton.do {
            $0.setImage(UIImage(resource: .wifiIcon), for: .normal)
            $0.roundedButton(cornerRadius: 8, maskedCorners: [.layerMinXMinYCorner, .layerMinXMaxYCorner, .layerMaxXMinYCorner, .layerMaxXMaxYCorner])
            $0.clipsToBounds = true
            $0.imageView?.contentMode = .scaleAspectFit
        }
        
        concentButton.do {
            $0.setImage(UIImage(resource: .chargeIcon), for: .normal)
            $0.roundedButton(cornerRadius: 8, maskedCorners: [.layerMinXMinYCorner, .layerMinXMaxYCorner, .layerMaxXMinYCorner, .layerMaxXMaxYCorner])
            $0.clipsToBounds = true
            $0.imageView?.contentMode = .scaleAspectFit
        }
        
        congestionLabel.do {
            $0.backgroundColor = UIColor(resource: .deepGreen)
            $0.font = UIFont.systemFont(ofSize: 10, weight: .bold)
            $0.textColor = .white
            $0.textAlignment = .center
        }
    }
}

extension CafeBrowseCollectionViewCell {
    func dataBind(_ cafeInfoData: CafeInfoModel, _ cafeItemRow: Int) {
        self.cafeItemRow = cafeItemRow
        self.imageView.image = UIImage(named: cafeInfoData.thumbnail ?? "default")
        self.nameLabel.text = cafeInfoData.name
        self.cafeURL = cafeInfoData.link ?? "https://naver.me/5Q4ojiSX"
        self.categoryLabel.text = cafeInfoData.category
        self.timeButton.setTitle(cafeInfoData.time, for: .normal)
        if let americanoPrice = cafeInfoData.americanoPrice {
            self.americanoPriceButton.setTitle("\(americanoPrice)", for: .normal)
        } else {
            self.americanoPriceButton.setTitle("N/A", for: .normal)
        }
        setStatusBar(congestion: cafeInfoData.congestion ?? 50)
        self.distanceLabel.text = "\(cafeInfoData.distance ?? 100) m"
        // self.wifiButton.setTitle(cafeInfoData.wifi == true ? "Available" : "Not Available", for: .normal)
        // self.concentButton.setTitle(cafeInfoData.concent == true ? "Available" : "Not Available", for: .normal)
    }
    
    func setStatusBar(congestion: Int) {
        if congestion <= 33 {
            // congestionLabel.text = "여유"
            congestionImageView.image = UIImage(resource: .greenBar)
        } else if 33 < congestion && congestion <= 66 {
            // congestionLabel.text = "보통"
            congestionImageView.image = UIImage(resource: .yellowBar)
        } else {
            // congestionLabel.text = "혼잡"
            congestionImageView.image = UIImage(resource: .redBar)
        }
    }
    
    
}
