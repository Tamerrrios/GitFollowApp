//
//  SearchVC.swift
//  GitFollowApp
//
//  Created by Temur Juraev on 29.06.2022.
//

import UIKit

class SearchVC: UIViewController {
    
    let logoImageView           = UIImageView()
    let userNameTextField       = GFTextField()
    let callToActionButton      = GFButton(backgroundColor: .systemGreen, title: "Get Followers")

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    func configureLogoImageView() {
        view.addSubview(logoImageView)
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.image = UIImage(named: "gh-logo")!
    }
    



}
