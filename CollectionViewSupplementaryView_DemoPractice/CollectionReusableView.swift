//
//  CollectionReusableView.swift
//  CollectionViewSupplementaryView_DemoPractice
//
//  Created by tmtech1 on 19/10/22.
//

import UIKit

class HeaderReusableView: UICollectionReusableView {
       
    static let identifier = "HeaderReusableView"

    private let imgViewHeader: UIImageView = {
       let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.image = UIImage(systemName: "house")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imgViewHeader)

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imgViewHeader.frame = bounds
        backgroundColor = .white

    }
}

class FooterReusableView: UICollectionReusableView {
       
    static let identifier = "FooterReusableView"

    private let imgViewFooter: UIImageView = {
       let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.image = UIImage(systemName: "house")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let label: UILabel = {
       let lbl = UILabel()
        lbl.text = "Custom Footer"
        lbl.textAlignment = .center
        return lbl
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imgViewFooter)
        addSubview(label)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        backgroundColor = .darkGray
        imgViewFooter.frame = bounds
        label.frame = bounds
    }
}
