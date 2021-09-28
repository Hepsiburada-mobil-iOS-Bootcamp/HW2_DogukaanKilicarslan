//
//  GenericBaseView.swift
//  PermissionRedone
//
//  Created by DarkBringer on 28.09.2021.
//

import UIKit

class GenericBaseView<T>: BaseView {
    
    private var data: T?
    
    
    //burayı baseview'dan zaten alıyoruz yazmak zorunda değiliz
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    init(frame: CGRect = .zero, data: T? = nil) {
        
        self.data = data
        super.init(frame: frame)
        loadDataView()
        
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func loadDataView() {
        
    }
    
    func setData(by value: T?) {
        self.data = value
        loadDataView()
    }
    
    func returnData() -> T? {
        return data
    }
}
