//
//  ActionButtonData.swift
//  PermissionRedone
//
//  Created by DarkBringer on 28.09.2021.
//

import Foundation
import UIKit

//We set the variables we need to create a action button. We determine their types here and fill them out later as we need.

typealias VoidCompletionBlock = () -> Void

class ActionButtonData {
    
    private(set) var text: String
    private(set) var buttonType: ActionButtonType
    private(set) var actionButtonListener: VoidCompletionBlock?
    
    init(text: String, type: ActionButtonType) {
        self.text = text
        self.buttonType = type
   
    }
    
    //what we want the button to do when we press on it. We determine the action later inside the views
    
    func setActionButtonListener(by value: VoidCompletionBlock?) -> Self {
        actionButtonListener = value
        return self
    }
    
    
}
