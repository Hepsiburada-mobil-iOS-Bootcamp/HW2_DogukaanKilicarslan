//
//  ActionButton.swift
//  PermissionRedone
//
//  Created by DarkBringer on 28.09.2021.
//

import UIKit

class ActionButton: BaseView {
    
    private lazy var containerView: UIView = {
        let temp = UIView()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.layer.cornerRadius = 6
        temp.clipsToBounds = true
        temp.backgroundColor = .red
        return temp
    }()
    
    private lazy var infoTitle: UILabel = {
        let temp = UILabel()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.font = FontManager.bold(14).value
        return temp
    }()
    
    override func addMajorViewComponents() {
        super.addMajorViewComponents()
        addContainerView()
    }
    
    private func addContainerView() {
        addSubview(containerView)
        
        NSLayoutConstraint.activate([
        
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor),
            containerView.topAnchor.constraint(equalTo: topAnchor),
            
            
            
        ])
    }
    
}
