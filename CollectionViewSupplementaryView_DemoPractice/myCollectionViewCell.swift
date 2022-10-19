//
//  myCollectionViewCell.swift
//  CollectionViewSupplementaryView_DemoPractice
//
//  Created by tmtech1 on 19/10/22.
//

import UIKit

class myCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "myCollectionViewCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
