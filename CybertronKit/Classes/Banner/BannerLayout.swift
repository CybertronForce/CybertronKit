//
//  BannerLayout.swift
//  CybertronKit
//
//  Created by WayneSun on 2022/5/4.
//

import Foundation

public class BannerLayout: UICollectionViewLayout {
    public var itemCount: Int = 0 {
        didSet(v) {
            invalidateLayout()
        }
    }
    
    public var itemSize: CGSize = CGSize(width: 50.0, height: 50.0) {
        didSet(v) {
            invalidateLayout()
        }
    }
    
    public var minimumInteritemSpacing: CGFloat = 10.0 {
        didSet(v) {
            invalidateLayout()
        }
    }
    
    public var isInfiniteScrollable: Bool = false {
        didSet(v) {
            invalidateLayout()
        }
    }
    
    public weak var bannerView: BannerView?
    
    private var contentSize: CGSize = .zero
    private var sectionCount: Int = 0
    
    
    public override func prepare() {
        guard let collection = self.collectionView, let banner = self.bannerView else { return }
        
        itemCount = banner.dataSource?.numberOfItems(in: banner) ?? 0
        sectionCount = isInfiniteScrollable ? Int.max : 1
        
        contentSize = {
            let width = (itemSize.width + minimumInteritemSpacing) * CGFloat(itemCount) * CGFloat(sectionCount)
            return CGSize(width: width, height: collection.frame.height)
        }()
        
        let initIndex = IndexPath(item: 0, section: isInfiniteScrollable ? sectionCount / 2 : 0)
        collection.scrollToItem(at: initIndex, at: .centeredHorizontally, animated: false)
    }
    
    public override var collectionViewContentSize: CGSize {
        return contentSize
    }
    
    public override func shouldInvalidateLayout(forBoundsChange newBounds: CGRect) -> Bool {
        return true
    }
    
    public override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        let layouts = super.layoutAttributesForElements(in: rect)
        
        
        return nil
    }
    
    public override func layoutAttributesForItem(at indexPath: IndexPath) -> UICollectionViewLayoutAttributes? {
        let att = UICollectionViewLayoutAttributes.init(forCellWith: indexPath)
        return att
    }
    
    public override func targetContentOffset(forProposedContentOffset proposedContentOffset: CGPoint, withScrollingVelocity velocity: CGPoint) -> CGPoint {
        return .zero
    }
}
