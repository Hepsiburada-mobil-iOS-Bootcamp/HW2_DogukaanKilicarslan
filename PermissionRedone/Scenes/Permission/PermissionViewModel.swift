//
//  PermissionViewModel.swift
//  PermissionRedone
//
//  Created by DarkBringer on 29.09.2021.
//

import Foundation

/*
we create Permission view managers to build a permission view with the data we want.
Every view has a different manager.
we call that manager from the view or according to user interaction.
*/

class PermissionViewModel {
    
    private var permissionViewDismissActionBlock: VoidCompletionBlock?
    
    private let manager: PermissionManagerProtocol
    
    init(manager: PermissionManagerProtocol) {
        self.manager = manager
    }
    
    func listenManagerActions(with completion: @escaping VoidCompletionBlock) {
        permissionViewDismissActionBlock = completion
    }
    
    func getPermissionMainViewData() -> PermissionMainViewData {
        return manager.getPermissionMainViewData(with: negativeListener, with: positiveListener)
    }
    
    lazy var negativeListener: VoidCompletionBlock = { [weak self] in
        print("notnow pressed in permissionVM")
        self?.permissionViewDismissActionBlock?()
    }
    lazy var positiveListener: VoidCompletionBlock = { [weak self] in
        print("ok pressed in permissionVM")
        self?.manager.requestPermission(with: {
            
        })
        
    }
    
}

//PermissionMainViewData(image: PermissionImages.camera.value,
//                       labelPackData: LabelPackComponentData(
//                        title: "Camera Permission",
//                        subtitle: "Would you please give permission to access to your camera"),
//                       actionModuleData: ActionModuleData(
//                        negativeButtonData: ActionButtonData(text: "NotNow",
//                                                             type: .outlined(.smooth)),
//                        positiveButtonData: ActionButtonData(text: "OK",
//                                                             type: .filled(.smooth))))
