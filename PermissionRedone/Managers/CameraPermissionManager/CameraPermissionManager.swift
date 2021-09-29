//
//  CameraPermissionManager.swift
//  PermissionRedone
//
//  Created by DarkBringer on 29.09.2021.
//

import Foundation

class CameraPermissionManager: PermissionManagerProtocol {
    
    func requestPermission(with completion: @escaping VoidCompletionBlock) {
        print("Request permission from the system")
    }
    
    func getPermissionMainViewData() -> PermissionMainViewData {
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
