//
//  PermissionViewController.swift
//  PermissionRedone
//
//  Created by DarkBringer on 29.09.2021.
//

import UIKit

class PermissionViewController: UIViewController {

    private var permissionMainView: PermissionMainView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addPermissionMainView()
    }
    
    private func addPermissionMainView() {
        permissionMainView = PermissionMainView(data: getPermissionViewData())
        permissionMainView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(permissionMainView)
        
        NSLayoutConstraint.activate([
        
            permissionMainView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            permissionMainView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            permissionMainView.trailingAnchor.constraint(equalTo: view.trailingAnchor),

        
        ])
    }
    
    private func getPermissionViewData() -> PermissionMainViewData {
        return PermissionMainViewData(image: PermissionImages.camera.value,
                                      labelPackData: LabelPackComponentData(
                                        title: "Camera Permission",
                                        subtitle: "Would you please give permission to access to your camera"),
                                      actionModuleData: ActionModuleData(
                                        negativeButtonData: ActionButtonData(text: "NotNow",
                                                                             type: .outlined(.smooth)),
                                        positiveButtonData: ActionButtonData(text: "OK",
                                                                             type: .filled(.smooth))))
    }
}
