//
//  PermissionViewFactory.swift
//  PermissionRedone
//
//  Created by DarkBringer on 29.09.2021.
//

import Foundation

/*
When user taps a button we give back a manager according to which button pressed.

 */
class PermissionViewFactory {
    class func getManager(with type: PermissionType) -> PermissionManagerProtocol {
        switch type {
            case .camera:
                return CameraPermissionManager()
            case .photos:
                return PhotosPermissionManager()
        }
    }
}
