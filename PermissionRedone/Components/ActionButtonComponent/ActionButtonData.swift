//
//  ActionButtonData.swift
//  PermissionRedone
//
//  Created by DarkBringer on 28.09.2021.
//

import Foundation
import UIKit

typealias VoidCompletionBlock = () -> Void

class ActionButtonData {
    
    private(set) var text: String
    private(set) var buttonType: ActionButtonType
    private(set) var actionButtonListener: VoidCompletionBlock?
    
    init(text: String, type: ActionButtonType) {
        self.text = text
        self.buttonType = type
   
    }
    
    func setActionButtonListener(by value: VoidCompletionBlock?) -> Self {
        actionButtonListener = value
        return self
    }
    
    
}
