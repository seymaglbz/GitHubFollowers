//
//  GFButton.swift
//  GitHubFollowers
//
//  Created by Şeyma Gılbaz on 29.12.2019.
//  Copyright © 2019 Şeyma Gılbaz. All rights reserved.
//

import UIKit

class GFButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(backgroundColor: UIColor, title: String) {
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        self.setTitle(title, for: .normal)
        configure()
    }
    
    private func configure() {
        layer.cornerRadius = 10
        setTitleColor(.white, for: .normal)//as default the title color is already white but I leave it here as reference for future
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)//with preferredFont() we get the dynamic type
        translatesAutoresizingMaskIntoConstraints = false
    }
    
}
