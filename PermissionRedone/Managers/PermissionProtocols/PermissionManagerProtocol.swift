//
//  PermissionProtocols.swift
//  PermissionRedone
//
//  Created by DarkBringer on 29.09.2021.
//

import Foundation

enum PermissionType {
    case camera
    case photos
}

protocol PermissionManagerProtocol {
    
    func requestPermission(with completion: @escaping VoidCompletionBlock)
    func getPermissionMainViewData() -> PermissionMainViewData
    
}
