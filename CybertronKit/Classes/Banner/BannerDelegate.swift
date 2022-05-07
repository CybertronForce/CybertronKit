//
//  BannerDelegate.swift
//  CybertronKit
//
//  Created by WayneSun on 2022/5/7.
//

import Foundation

@objc protocol BannerDelegate {
    @objc optional func banner(_ bannerView: BannerView, didSelectItemAt: IndexPath)
    
    @objc optional func banner(_ bannerView: BannerView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath)
    
    @objc optional func banner(_ bannerView: BannerView, didEndDisplaying cell: UICollectionViewCell, forItemAt indexPath: IndexPath)
}
