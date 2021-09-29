//
//  PermissionViewFactory.swift
//  PermissionRedone
//
//  Created by DarkBringer on 29.09.2021.
//

import Foundation


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
