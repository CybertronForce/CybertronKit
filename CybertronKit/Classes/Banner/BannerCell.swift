//
//  BannerCell.swift
//  CybertronKit
//
//  Created by WayneSun on 2022/5/4.
//

import Foundation

class BannerCell: UICollectionViewCell {
    
    private var titleLab = UILabel()
    
    private var contentImg = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

private extension BannerCell {
    func configSubviews() {
        contentImg.backgroundColor = .init(red: CGFloat.random(in: 0...255),
                                           green: CGFloat.random(in: 0...255),
                                           blue: CGFloat.random(in: 0...255),
                                           alpha: 1)
        contentView.addSubview(contentImg)
        
        titleLab.font = .boldSystemFont(ofSize: 20)
        titleLab.textColor = .green
        titleLab.textAlignment = .center
        contentView.addSubview(titleLab)
    }
}
