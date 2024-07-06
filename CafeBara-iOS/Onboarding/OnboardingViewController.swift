//
//  OnboardingViewController.swift
//  CafeBara-iOS
//
//  Created by 이수민 on 7/6/24.
//

import UIKit

import SnapKit
import Then

class OnboardingViewController: UIViewController {
    
    let imageView = UIImageView()
    let campLabel = UILabel()
    let pmeokLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(resource: .deepGreen)
        view.addSubviews(imageView, campLabel, pmeokLabel)
        imageView.snp.makeConstraints{
            $0.center.equalToSuperview()
            $0.width.height.equalTo(300)
        }
        campLabel.snp.makeConstraints {
            $0.top.equalTo(imageView.snp.bottom).offset(10)
            $0.centerX.equalToSuperview()
        }
        pmeokLabel.snp.makeConstraints {
            $0.top.equalTo(campLabel.snp.bottom).offset(10)
            $0.centerX.equalToSuperview()
        }
        setStyle()
    }
    
    func setStyle() {
        imageView.do {
            $0.contentMode = .scaleAspectFit
            $0.image = UIImage(resource: .mainLogo)
        }
        
        campLabel.do {
            $0.text = "2024 SNU IGNITE 캠프"
            $0.textColor = .systemYellow
            $0.font = UIFont.systemFont(ofSize: 20)
        }
        
        pmeokLabel.do {
            $0.text = "퍼먹자 @ppppmeokja"
            $0.textColor = .white
            $0.font = UIFont.systemFont(ofSize: 20)
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            self.transitionToMainViewController()
        }
    }
    
    private func transitionToMainViewController() {
        let mainViewController = TabBarController()
        mainViewController.modalTransitionStyle = .crossDissolve
        mainViewController.modalPresentationStyle = .fullScreen
        present(mainViewController, animated: true, completion: nil)
    }
}
