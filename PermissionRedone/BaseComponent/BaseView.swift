//
//  BaseView.swift
//  PermissionRedone
//
//  Created by DarkBringer on 28.09.2021.
//

import UIKit

//Inherits from UIView to omit init functions and add two more functions to call from children classes

class BaseView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        addMajorViewComponents()
        setupViewConfigurations()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        addMajorViewComponents()
        setupViewConfigurations()
    }
    
    func addMajorViewComponents() { }
    func setupViewConfigurations() { }
}
