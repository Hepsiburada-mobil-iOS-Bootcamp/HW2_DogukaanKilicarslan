//
//  PermissionMainComponentData.swift
//  PermissionRedone
//
//  Created by DarkBringer on 29.09.2021.
//

import UIKit

//We determine what we need inside a Permission module (Whole sheet view we need) (An image, two labels, two buttons and their functionalities inherited from base classes respectively)


class PermissionMainViewData {
    
    private(set) var image: UIImage
    private(set) var labelPackData: LabelPackComponentData
    private(set) var actionModuleData: ActionModuleData
    
    init(image: UIImage, labelPackData: LabelPackComponentData, actionModuleData: ActionModuleData) {
        self.image = image
        self.labelPackData = labelPackData
        self.actionModuleData = actionModuleData
    }
    
}
