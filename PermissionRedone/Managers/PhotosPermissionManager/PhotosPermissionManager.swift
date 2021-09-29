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
    
    func getPermissionMainViewData() -> PermissionMainViewData {
        return PermissionMainViewData(image: PermissionImages.photos.value,
                                      labelPackData: LabelPackComponentData(
                                        title: "Photos Permission",
                                        subtitle: "Would you please give permission to access to your photos"),
                                      actionModuleData: ActionModuleData(
                                        negativeButtonData: ActionButtonData(text: "NotNow",
                                                                             type: .outlined(.bright)),
                                        positiveButtonData: ActionButtonData(text: "OK",
                                                                             type: .filled(.bright))))
    }
    
}
