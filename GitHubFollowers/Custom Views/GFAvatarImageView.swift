//
//  GFAvatarImageView.swift
//  GitHubFollowers
//
//  Created by Şeyma Gılbaz on 5.01.2020.
//  Copyright © 2020 Şeyma Gılbaz. All rights reserved.
//

import UIKit

class GFAvatarImageView: UIImageView {
    
    let placeHolderImage = UIImage(named: "avatar-placeholder")!

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        layer.cornerRadius = 10 //UIImageView's corner is going to be rounded. But when we put an image in it, in order to image's corners to be rounded we need to set it to clipsToBounds.
        clipsToBounds = true
        image = placeHolderImage
        translatesAutoresizingMaskIntoConstraints = false
    }
}
