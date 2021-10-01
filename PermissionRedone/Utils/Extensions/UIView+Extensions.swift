//
//  UIView+Extensions.swift
//  PermissionRedone
//
//  Created by DarkBringer on 28.09.2021.
//

import UIKit

extension UIView {
    
    func startTappedAnimation(with completion: @escaping (Bool) -> Void) {
        
        transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        
        UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 6.0, options: .allowUserInteraction, animations: {
            self.transform = CGAffineTransform.identity
        }, completion: completion)
        
        self.layoutIfNeeded()
        
    }
}
