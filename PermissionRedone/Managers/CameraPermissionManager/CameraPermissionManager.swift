//
//  CameraPermissionManager.swift
//  PermissionRedone
//
//  Created by DarkBringer on 29.09.2021.
//

import Foundation

/*
 When user taps camera button this manager gets called to the permissionViewModel and shows the data we give here.
 
 All the data is set programatically.
 Labels are strings but in localizables files.
 Image source is determined with an enum which has a string value which is the file name inside the assests
 Button themes colors and types are determined with enums and switch cases in the base ActionButton class
 */

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
