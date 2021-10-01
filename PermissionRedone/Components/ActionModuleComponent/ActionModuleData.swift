//
//  ActionModuleData.swift
//  PermissionRedone
//
//  Created by DarkBringer on 28.09.2021.
//

import UIKit

//We determine what we need inside an ActionModule ( two buttons and their functionalities inherited from base actionButton)

class ActionModuleData {
    
    private(set) var negativeButtonData: ActionButtonData
    private(set) var positiveButtonData: ActionButtonData
    
    init(negativeButtonData: ActionButtonData, positiveButtonData: ActionButtonData) {
        self.negativeButtonData = negativeButtonData
        self.positiveButtonData = positiveButtonData
    }
    
    
}
