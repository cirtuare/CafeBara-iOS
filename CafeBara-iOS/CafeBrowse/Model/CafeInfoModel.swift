//
//  CafeBrowseModel.swift
//  CafeBara-iOS
//
//  Created by 이수민 on 7/5/24.
//

import UIKit

struct CafeInfoModel {
    let thumbnail: String?
    let name: String?
    let link: String?
    let category: String?
    let time: String?
    let americanoPrice: Int?
    let congestion: Int?
    let distance: Int?
    let wifi: Bool?
    let concent: Bool?
    
    init(thumbnail: String?, name: String?, link: String?, category: String?, time: String?, americanoPrice: Int?, congestion: Int?, distance: Int?, wifi: Bool?, concent: Bool?) {
        self.thumbnail = thumbnail
        self.name = name
        self.link = link
        self.category = category
        self.time = time
        self.americanoPrice = americanoPrice
        self.congestion = congestion
        self.distance = distance
        self.wifi = wifi
        self.concent = concent
    }
    
}
    



