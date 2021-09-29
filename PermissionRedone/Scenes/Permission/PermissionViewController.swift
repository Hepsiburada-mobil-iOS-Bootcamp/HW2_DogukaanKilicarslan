//
//  PermissionViewController.swift
//  PermissionRedone
//
//  Created by DarkBringer on 29.09.2021.
//

import UIKit

class PermissionViewController: UIViewController {

    private var permissionMainView: PermissionMainView!
    private var viewModel: PermissionViewModel!
    
    convenience init(viewModel: PermissionViewModel) {
        self.init()
        self.viewModel = viewModel
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addPermissionMainView()
    }
    
    private func addPermissionMainView() {
        permissionMainView = PermissionMainView(data: viewModel.getPermissionMainViewData())
        permissionMainView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(permissionMainView)
        
        NSLayoutConstraint.activate([
        
            permissionMainView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            permissionMainView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            permissionMainView.trailingAnchor.constraint(equalTo: view.trailingAnchor),

        
        ])
    }
    
}
