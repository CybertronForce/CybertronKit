//
//  BannerLayout.swift
//  CybertronKit
//
//  Created by WayneSun on 2022/5/4.
//

import Foundation

class BannerLayout: UICollectionViewLayout {
    private var itemCount: Int = 0
    private var itemSize: CGSize = .zero
    
    
    override func prepare() {
        guard let collection = self.collectionView else { return }
        
        itemCount = collection.numberOfItems(inSection: 0)
    }
    
    override var collectionViewContentSize: CGSize {
        return self.collectionView?.frame.size ?? .zero
    }
    
    override func shouldInvalidateLayout(forBoundsChange newBounds: CGRect) -> Bool {
        return false
    }
    
    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        let layouts = super.layoutAttributesForElements(in: rect)
        layouts?.forEach({ att in
            att.zIndex
        })
        return nil
    }
    
    override func layoutAttributesForItem(at indexPath: IndexPath) -> UICollectionViewLayoutAttributes? {
        return nil
    }
}
