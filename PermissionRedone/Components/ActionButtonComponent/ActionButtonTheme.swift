//
//  ActionButtonTheme.swift
//  PermissionRedone
//
//  Created by DarkBringer on 28.09.2021.
//

import UIKit

//Value protocol becomes UIColor here.
//We also determine the color of the buttons we set in other views.

enum ActionButtonTheme: GenericValueProtocol {
    
    typealias Value = UIColor
    
    var value: UIColor {
        switch self {
            case .smooth:
                return #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
            case .bright:
                return #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
            case .negativeAction:
                return #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        }
    }
    case smooth
    case negativeAction
    case bright
}
