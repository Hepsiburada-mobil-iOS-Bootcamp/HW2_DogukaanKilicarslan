//
//  PermissionLocalizable.swift
//  PermissionRedone
//
//  Created by DarkBringer on 29.09.2021.
//

import Foundation

enum PermissionLocalizable: String, GenericValueProtocol {
   
    typealias Value = String
    
    var value: String {
        return rawValue.toLocalize()
    }
    
    case cameraPermissionTitle = "cameraPermissionTitle"
    case cameraPermissionSubtitle = "cameraPermissionSubTitle"
    
    case photosPermissionTitle = "photosPermissionTitle"
    case photosPermissionSubtitle = "photosPermissionSubtitle"
    case permissionOK = "permissionOK"
    case permissionNotNow = "permissionNotNow"
    
}
