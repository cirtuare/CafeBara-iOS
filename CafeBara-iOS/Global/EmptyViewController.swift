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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubviews(mainLogoImageView)
        mainLogoImageView.snp.makeConstraints {
            $0.center.equalToSuperview()
            $0.width.height.equalTo(300)
        }
        setStyle()
    }
    
    func setStyle() {
        mainLogoImageView.do {
            $0.image = UIImage(resource: .mainLogo)
            $0.clipsToBounds = true
            $0.contentMode = .scaleAspectFit
        }
    }

   

}
