//
//  PermissionViewModel.swift
//  PermissionRedone
//
//  Created by DarkBringer on 29.09.2021.
//

import Foundation

class PermissionViewModel {
    
    private let manager: PermissionManagerProtocol
    
    init(manager: PermissionManagerProtocol) {
        self.manager = manager
    }
    
    
    func getPermissionMainViewData() -> PermissionMainViewData {
        return manager.getPermissionMainViewData()
    }
}

//
//PermissionMainViewData(image: PermissionImages.camera.value,
//                       labelPackData: LabelPackComponentData(
//                        title: "Camera Permission",
//                        subtitle: "Would you please give permission to access to your camera"),
//                       actionModuleData: ActionModuleData(
//                        negativeButtonData: ActionButtonData(text: "NotNow",
//                                                             type: .outlined(.smooth)),
//                        positiveButtonData: ActionButtonData(text: "OK",
//                                                             type: .filled(.smooth))))
