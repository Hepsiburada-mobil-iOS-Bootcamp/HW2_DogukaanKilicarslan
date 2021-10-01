//
//  LabelPackComponent.swift
//  PermissionRedone
//
//  Created by DarkBringer on 29.09.2021.
//

import UIKit

//This class is all about UI. We create a stackView, inside that two text labels.
//And we put all these together and call it with a function inside other views or whereever we need.


class LabelPackComponent: GenericBaseView<LabelPackComponentData> {
    
    private lazy var mainStackView: UIStackView = {
        let temp = UIStackView(arrangedSubviews: [titleLabel, subtitleLabel])
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.alignment = .center
        temp.distribution = .fill
        temp.axis = .vertical
        temp.spacing = 10
        return temp
    }()
    
    private lazy var titleLabel: UILabel = {
        let temp = UILabel()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.textColor = .black
        temp.text = " "
        temp.lineBreakMode = .byWordWrapping
        temp.numberOfLines = 0
        temp.contentMode = .center
        temp.textAlignment = .center
        temp.font = FontManager.bold(24).value
        return temp
    }()
    private lazy var subtitleLabel: UILabel = {
        let temp = UILabel()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.textColor = .black
        temp.text = " "
        temp.lineBreakMode = .byWordWrapping
        temp.numberOfLines = 0
        temp.contentMode = .center
        temp.textAlignment = .center
        temp.font = FontManager.regular(16).value
        return temp
    }()
    
    override func addMajorViewComponents() {
        super.addMajorViewComponents()
        addUserComponents()
    }
    
    func addUserComponents() {
        addSubview(mainStackView)
        
        NSLayoutConstraint.activate([
        
            mainStackView.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            mainStackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            mainStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            mainStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),

        ])
    }
    
    override func loadDataView() {
        super.loadDataView()
        guard let data = returnData() else { return }
        titleLabel.text = data.title
        subtitleLabel.text = data.subtitle
    }
    
}
