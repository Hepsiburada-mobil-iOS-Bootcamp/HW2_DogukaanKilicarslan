//
//  LabelPackComponentData.swift
//  PermissionRedone
//
//  Created by DarkBringer on 29.09.2021.
//

import Foundation

//We determine what we need inside an LabelPack (Two text lines with different names to fill out later.)


class LabelPackComponentData {
    private(set) var title: String
    private(set) var subtitle: String
    
    init(title: String, subtitle: String) {
        self.title = title
        self.subtitle = subtitle
    }
}
