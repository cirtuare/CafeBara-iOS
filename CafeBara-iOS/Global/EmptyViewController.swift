//
//  EmptyViewController.swift
//  CafeBara-iOS
//
//  Created by 이수민 on 7/6/24.
//

import UIKit

import SnapKit

class EmptyViewController: UIViewController {

    let mainLogoImageView = UIImageView()
    let laterLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubviews(mainLogoImageView, laterLabel)
        mainLogoImageView.snp.makeConstraints {
            $0.center.equalToSuperview()
            $0.width.height.equalTo(200)
        }
        laterLabel.snp.makeConstraints {
            $0.top.equalTo(mainLogoImageView.snp.bottom).offset(10)
            $0.centerX.equalToSuperview()
        }
        setStyle()
    }
    
    func setStyle() {
        mainLogoImageView.do {
            $0.image = UIImage(resource: .characterLogo)
            $0.clipsToBounds = true
            $0.contentMode = .scaleAspectFit
        }
        
        laterLabel.do {
            $0.text = "아직 기능이 오픈되지 않았어요!"
            $0.textColor = .black
            $0.font = UIFont.systemFont(ofSize: 20)
        }
    }

   

}
