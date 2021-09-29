//
//  PermissionImages.swift
//  PermissionRedone
//
//  Created by DarkBringer on 29.09.2021.
//

import UIKit

enum PermissionImages: String, GenericValueProtocol {
    
    typealias Value = UIImage
    
    var value: UIImage {
               return UIImage(imageLiteralResourceName: rawValue)
    }
    
    case camera = "camera_"
    case photos = "notif_"
    
}
