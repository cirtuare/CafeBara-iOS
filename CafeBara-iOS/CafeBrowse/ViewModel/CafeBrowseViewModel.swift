//
//  CafeBrowseViewModel.swift
//  CafeBara-iOS
//
//  Created by 이수민 on 7/5/24.
//

import Foundation

final class CafeBrowseViewModel {
    
    var cafeBrowseDummyData = [
        CafeInfoModel(thumbnail: "낙대1", name: "할리스 서울대사거리점", link: "https://naver.me/FQaIERfD", category: "# 공부하기 좋은", time: "10시 이후 마감", americanoPrice: 4500, congestion: 35, distance: 24, wifi: true, concent: true),

        CafeInfoModel(thumbnail: "낙대2", name: "멜로우스트리트", link: "https://naver.me/xWpnizxg", category: "# 공부하기 좋은", time: "10시 이전 마감", americanoPrice: 4500, congestion: 72, distance: 0, wifi: true, concent: true),

        CafeInfoModel(thumbnail: "낙대3", name: "공차 서울대입구역점", link: "https://naver.me/FYU0sJfk", category: "# 공부하기 좋은", time: "10시 이후 마감", americanoPrice: 3700, congestion: 14, distance: 102, wifi: true, concent: true),

        CafeInfoModel(thumbnail: "낙대4", name: "스타벅스 낙성대점", link: "https://naver.me/F0zbfSRy", category: "# 공부하기 좋은", time: "10시 이전 마감", americanoPrice: 4500, congestion: 57, distance: 795, wifi: true, concent: true),

        CafeInfoModel(thumbnail: "낙대5", name: "세상과연애하기", link: "https://naver.me/GbED7nkj", category: "# 공부하기 좋은", time: "10시 이후 마감", americanoPrice: 4500, congestion: 33, distance: 240, wifi: true, concent: true),

        CafeInfoModel(thumbnail: "낙대6", name: "마인드멜드", link: "https://naver.me/GHE415xr", category: "# 감성 있는", time: "10시 이전 마감", americanoPrice: 4500, congestion: 89, distance: 288, wifi: true, concent: true),

        CafeInfoModel(thumbnail: "낙대7", name: "차이트커피스탠드", link: "https://naver.me/5mYgGMLF", category: "# 감성 있는", time: "10시 이전 마감", americanoPrice: 4500, congestion: 45, distance: 318, wifi: true, concent: true),

        CafeInfoModel(thumbnail: "낙대8", name: "헤이스위티", link: "https://naver.me/Gq8vrzJZ", category: "# 감성 있는", time: "10시 이전 마감", americanoPrice: 3200, congestion: 53, distance: 314, wifi: true, concent: true),

        CafeInfoModel(thumbnail: "낙대9", name: "트램 서울", link: "https://naver.me/GBljmxFq", category: "# 감성 있는", time: "10시 이전 마감", americanoPrice: 4500, congestion: 77, distance: 272, wifi: true, concent: true),

        CafeInfoModel(thumbnail: "낙대10", name: "황홀경", link: "https://naver.me/5y4q0oyy", category: "# 감성 있는", time: "10시 이전 마감", americanoPrice: 4500, congestion: 21, distance: 356, wifi: true, concent: true),

        CafeInfoModel(thumbnail: "낙대11", name: "듀레스트", link: "https://naver.me/5Udl3HK1", category: "# 감성 있는", time: "10시 이전 마감", americanoPrice: 4500, congestion: 62, distance: 376, wifi: true, concent: true),

        CafeInfoModel(thumbnail: "낙대12", name: "티라노", link: "https://naver.me/GbEc1tA1", category: "# 감성 있는", time: "10시 이후 마감", americanoPrice: 4000, congestion: 41, distance: 426, wifi: true, concent: true),

        CafeInfoModel(thumbnail: "낙대13", name: "리멤버미", link: "https://naver.me/GQ4NoFCU", category: "# 공부하기 좋은", time: "10시 이전 마감", americanoPrice: 5000, congestion: 94, distance: 466, wifi: true, concent: true),

        CafeInfoModel(thumbnail: "낙대14", name: "777카페", link: "https://naver.me/Goz5KBnC", category: "# 감성 있는", time: "10시 이후 마감", americanoPrice: 4500, congestion: 39, distance: 514, wifi: true, concent: true),

        CafeInfoModel(thumbnail: "낙대15", name: "데일리오아시스 샤로수길점", link: "https://naver.me/5bXdaGXn", category: "# 감성 있는", time: "10시 이전 마감", americanoPrice: 4000, congestion: 84, distance: 501, wifi: true, concent: true),

        CafeInfoModel(thumbnail: "낙대16", name: "백금당 샤로수길점", link: "https://naver.me/IGKtvu49", category: "# 감성 있는", time: "10시 이전 마감", americanoPrice: 4700, congestion: 17, distance: 489, wifi: true, concent: true),

        CafeInfoModel(thumbnail: "낙대17", name: "카페폴", link: "https://naver.me/GROzAsPd", category: "# 공부하기 좋은", time: "10시 이전 마감", americanoPrice: 4500, congestion: 66, distance: 598, wifi: true, concent: true),

        CafeInfoModel(thumbnail: "낙대18", name: "옐로우버터드림", link: "https://naver.me/xPIptWmt", category: "# 감성 있는", time: "10시 이전 마감", americanoPrice: 4500, congestion: 50, distance: 621, wifi: true, concent: true),

        CafeInfoModel(thumbnail: "낙대19", name: "가온길 서울대입구역점", link: "https://naver.me/5U1vtMO7", category: "# 감성 있는", time: "10시 이후 마감", americanoPrice: 3800, congestion: 28, distance: 485, wifi: true, concent: true),

        CafeInfoModel(thumbnail: "낙대20", name: "라우더 커피바", link: "https://naver.me/GgehFyO2", category: "# 감성 있는", time: "10시 이전 마감", americanoPrice: 4800, congestion: 75, distance: 465, wifi: true, concent: true),
        
        CafeInfoModel(thumbnail: "봉천4", name: "빽다방 관악구청점", link: "https://naver.me/x0aujq1F", category: "# 가성비 있는", time: "10시 이전 마감", americanoPrice: 2300, congestion: 1, distance: 204, wifi: true, concent: true),

    ]
    
    var updateCafeData: (([CafeInfoModel]) -> Void)?
        
    func loadAllCafes() {
        updateCafeData?(cafeBrowseDummyData)
    }
    
    func filterCafes(by category: String) {
        let filteredData = cafeBrowseDummyData.filter { $0.category == category }
        updateCafeData?(filteredData)
    }
    
}
