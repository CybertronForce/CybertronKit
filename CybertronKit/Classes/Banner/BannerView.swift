//
//  BannerView.swift
//  CybertronKit
//
//  Created by WayneSun on 2022/5/4.
//

import Foundation
import SnapKit

public class BannerView: UIView {
    
    weak var delegate: BannerDelegate?
    weak var dataSource: BannerDataSource?
    
    private var collection: UICollectionView
    
    private var layout: BannerLayout
    
    required init(layout: BannerLayout) {
        self.layout = layout
        self.collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        super.init(frame: .zero)
        self.configSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension BannerView: UICollectionViewDelegate {
    public func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.delegate?.banner?(self, didSelectItemAt: indexPath)
    }
    
    public func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        self.delegate?.banner?(self, willDisplay: cell, forItemAt: indexPath)
    }
    
    public func collectionView(_ collectionView: UICollectionView, didEndDisplaying cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        self.delegate?.banner?(self, didEndDisplaying: cell, forItemAt: indexPath)
    }
}

extension BannerView: UICollectionViewDataSource {
    public func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        if layout.isInfiniteScrollable == false {
            return 1
        }
        
        return Int.max
    }
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.dataSource?.numberOfItems(in: self) ?? 0
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return self.dataSource?.banner(self, cellForItemAt: indexPath) ?? UICollectionViewCell()
    }
}

private extension BannerView {
    func configSubviews() {
        
        addSubview(collection)
        collection.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
