//
//  FollowerCell.swift
//  GitFollowApp
//
//  Created by Temur Juraev on 12.07.2022.
//

import UIKit

class FollowerCell: UICollectionViewCell {
    static let reuseID       = "FollowerCell"
    let avatarImageView      = GFAvatarImageView(frame: .zero)
    let userNameLable        = GFTitleLabel(textAligment: .center, fontSize: 16)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(follower: Follower) {
        userNameLable.text = follower.login
    }
    
    private func configure() {
        addSubview(avatarImageView)
        addSubview(userNameLable)
        
        let padding: CGFloat = 8
        
        NSLayoutConstraint.activate([
            avatarImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: padding),
            avatarImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: padding),
            avatarImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -padding),
            avatarImageView.heightAnchor.constraint(equalTo: avatarImageView.widthAnchor),
            
            userNameLable.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 12),
            userNameLable.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: padding),
            userNameLable.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -padding),
            userNameLable.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
}
