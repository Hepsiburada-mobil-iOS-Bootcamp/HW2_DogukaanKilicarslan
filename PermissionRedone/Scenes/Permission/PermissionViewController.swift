//
//  PermissionViewController.swift
//  PermissionRedone
//
//  Created by DarkBringer on 29.09.2021.
//

import UIKit

/*
 This view will be created according to the data we recieve from the user interaction.
 And after that viewModel gets the manager from correct file and fills out necessary places inside the view (Image, Labels, Button colors and themes.)
 */

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
        subscribeViewModelListeners()
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
    private func subscribeViewModelListeners() {
        viewModel.listenManagerActions { [weak self] in
            self?.dismiss(animated: true, completion: nil)
        }
    }
}
