//
//  GFTextField.swift
//  GitFollowApp
//
//  Created by Temur Juraev on 06.07.2022.
//

import UIKit

class GFTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configure() {
    translatesAutoresizingMaskIntoConstraints = false
        
    layer.cornerRadius               = 10
    layer.borderWidth                = 2
    layer.borderColor                = UIColor.systemGray4.cgColor
        
    textColor                        = .label
    tintColor                        = .label
    textAlignment                    = .center
    font                             = UIFont.preferredFont(forTextStyle: .title2)
    adjustsFontSizeToFitWidth        = true
    minimumFontSize                  = 12
        
    backgroundColor                  = .tertiarySystemBackground
    autocorrectionType               = .no
    placeholder                      = "Enter a username"
        
    }
    


}