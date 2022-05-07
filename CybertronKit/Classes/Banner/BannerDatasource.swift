//
//  BannerDataSource.swift
//  CybertronKit
//
//  Created by WayneSun on 2022/5/7.
//

import Foundation

@objc protocol BannerDataSource {
    func numberOfItems(in bannerView: BannerView) -> Int
    
    func banner(_ bannerView: BannerView, cellForItemAt: IndexPath) -> UICollectionViewCell
}
