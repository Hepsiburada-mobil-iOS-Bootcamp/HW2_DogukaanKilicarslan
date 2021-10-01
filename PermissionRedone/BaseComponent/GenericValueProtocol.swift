//
//  GenericValueProtocol.swift
//  PermissionRedone
//
//  Created by DarkBringer on 28.09.2021.
//

import Foundation

//we use this protocol to use "value" as any type we want. We can inherit this protocol and use "value" in any class we need.

protocol GenericValueProtocol {
    associatedtype Value
    var value: Value { get }
}
