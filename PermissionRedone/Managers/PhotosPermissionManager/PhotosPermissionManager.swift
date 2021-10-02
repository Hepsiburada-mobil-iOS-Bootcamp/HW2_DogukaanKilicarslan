//
//  PhotosPermissionManager.swift
//  PermissionRedone
//
//  Created by DarkBringer on 29.09.2021.
//

import Foundation
import PhotosUI
/*
 When user taps photos button this manager gets called to the permissionViewModel and shows the data we give here.
 
 All the data is set programatically.
 Labels are strings but in localizables files.
 Image source is determined with an enum which has a string value which is the file name inside the assests
 Button themes colors and types are determined with enums and switch cases in the base ActionButton class
 */

class PhotosPermissionManager: PermissionManagerProtocol {
   
    func requestPermission(with completion: @escaping VoidCompletionBlock) {
        print("Request permission from the system")
        //Photos
                let photos = PHPhotoLibrary.authorizationStatus()
                if photos == .notDetermined {
                    PHPhotoLibrary.requestAuthorization({status in
                        if status == .authorized{
                            
                        } else {
                            
                        }
                    })
                }
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
