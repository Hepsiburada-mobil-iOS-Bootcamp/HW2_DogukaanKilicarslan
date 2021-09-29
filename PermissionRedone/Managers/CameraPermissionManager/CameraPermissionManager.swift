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

    func getPermissionMainViewData(with negativeListener: @escaping VoidCompletionBlock, with positiveListener: @escaping VoidCompletionBlock) -> PermissionMainViewData {
        return PermissionMainViewData(image: PermissionImages.camera.value,
                                      labelPackData: LabelPackComponentData(
                                        title: PermissionLocalizable.cameraPermissionTitle.value,
                                        subtitle: PermissionLocalizable.cameraPermissionSubtitle.value),
                                      actionModuleData: ActionModuleData(
                                        negativeButtonData: ActionButtonData(text: PermissionLocalizable.permissionNotNow.value,
                                                                             type: .outlined(.smooth)).setActionButtonListener(by: negativeListener),
                                        positiveButtonData: ActionButtonData(text: PermissionLocalizable.permissionOK.value,
                                                                             type: .filled(.smooth)).setActionButtonListener(by: positiveListener)))
    }
    
}
