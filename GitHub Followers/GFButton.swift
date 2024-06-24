//
//  GFButton.swift
//  GitHub Followers
//
//  Created by Amritanshu Dash on 24/06/24.
//

import UIKit

class GFButton: UIButton {
    
    // initialises the init of UIButton class with apple default stuff and overrides it also....
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    // required for story board
    required init?(coder: NSCoder) {
        fatalError("init(code:) has not been implemented.")
    }
    
    init(backgroundColor: UIColor, title: String) {
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        self.setTitle(title, for: .normal)
        configure()
    }
    
    private func configure() {
        layer.cornerRadius = 10
        titleLabel?.textColor = .white
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        translatesAutoresizingMaskIntoConstraints = false // auto layout is true to use autolayout
    }
    
}
