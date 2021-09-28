//
//  ActionButtonData.swift
//  PermissionRedone
//
//  Created by DarkBringer on 28.09.2021.
//

import Foundation
import UIKit

class ActionButtonData {
    
    private(set) var text: String
    private(set) var buttonType: ActionButtonType
    
    init(text: String, type: ActionButtonType) {
        self.text = text
        self.buttonType = type
    }
    
}
