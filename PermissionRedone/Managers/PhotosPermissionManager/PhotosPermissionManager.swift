//
//  PhotosPermissionManager.swift
//  PermissionRedone
//
//  Created by DarkBringer on 29.09.2021.
//

import Foundation

class PhotosPermissionManager: PermissionManagerProtocol {
    
    
    
    func requestPermission(with completion: @escaping VoidCompletionBlock) {
        print("Request permission from the system")
    }
    
    func getPermissionMainViewData(with negativeListener: @escaping VoidCompletionBlock, with positiveListener: @escaping VoidCompletionBlock) -> PermissionMainViewData {
        return PermissionMainViewData(image: PermissionImages.photos.value,
                                      labelPackData: LabelPackComponentData(
                                        title: PermissionLocalizable.photosPermissionTitle.value,
                                        subtitle: PermissionLocalizable.photosPermissionSubtitle.value),
                                      actionModuleData: ActionModuleData(
                                        negativeButtonData: ActionButtonData(text: PermissionLocalizable.permissionNotNow.value,
                                                                             type: .outlined(.bright)).setActionButtonListener(by: negativeListener),
                                        positiveButtonData: ActionButtonData(text: PermissionLocalizable.permissionOK.value,
                                                                             type: .filled(.bright)).setActionButtonListener(by: positiveListener)))
    }
}
