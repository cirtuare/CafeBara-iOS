//
//  TabBarViewController.swift
//  CafeBara-iOS
//
//  Created by 이수민 on 7/6/24.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.barTintColor = .white
        navigationItem.hidesBackButton = true
        self.view.backgroundColor = .white
        setVC()
    }
    
    private let homeViewController = UINavigationController(rootViewController: EmptyViewController())
    private let cafeBrowseViewController = UINavigationController(rootViewController: CafeBrowseViewController())
    private let mapViewController = UINavigationController(rootViewController: EmptyViewController())
    private let myPageViewController = UINavigationController(rootViewController: EmptyViewController())
    
    private func setVC(){
        self.setViewControllers([homeViewController, cafeBrowseViewController, mapViewController, myPageViewController], animated: true)
        
        if let items = self.tabBar.items{
            items[0].title = "홈"
            items[0].image = UIImage(systemName: "house")
            items[0].selectedImage = UIImage(systemName: "house.fill")?.withRenderingMode(.alwaysOriginal).withTintColor(.deepGreen)
            
            items[1].title = "카페"
            items[1].image = UIImage(systemName: "cup.and.saucer")
            items[1].selectedImage = UIImage(systemName: "cup.and.saucer.fill")?.withRenderingMode(.alwaysOriginal).withTintColor(.deepGreen)
            
            items[2].title = "지도"
            items[2].image = UIImage(systemName: "map")
            items[2].selectedImage = UIImage(systemName: "map.fill")?.withRenderingMode(.alwaysOriginal).withTintColor(.deepGreen)
            
            items[3].title = "마이페이지"
            items[3].image = UIImage(systemName: "person")
            items[3].selectedImage = UIImage(systemName: "person.fill")?.withRenderingMode(.alwaysOriginal).withTintColor(.deepGreen)
        }
        
    }
}
