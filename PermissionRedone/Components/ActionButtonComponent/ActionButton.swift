//
//  ActionButton.swift
//  PermissionRedone
//
//  Created by DarkBringer on 28.09.2021.
//

import UIKit

//MARK: - delegate protocol

//protocol ActionButtonDelegate: AnyObject{
//    func actionButtonPressed()
//}

class ActionButton: GenericBaseView<ActionButtonData> {
    
    //MARK: - delegate var

//    weak var delegate: ActionButtonDelegate?
    
    private lazy var shadowContainer: UIView = {
        let temp = UIView()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.layer.shadowColor = UIColor.black.cgColor
        temp.layer.shadowOffset = CGSize(width: 0, height: 2)
        temp.layer.shadowRadius = 4
        temp.layer.shadowOpacity = 0.6
        temp.layer.cornerRadius = 6
        return temp
    }()
    
    private lazy var containerView: UIView = {
        let temp = UIView()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.layer.cornerRadius = 6
        temp.clipsToBounds = true
        temp.backgroundColor = .red
        return temp
    }()
    
    private lazy var infoTitle: UILabel = {
        let temp = UILabel()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.font = FontManager.bold(14).value
        temp.text = " "
        temp.contentMode = .center
        temp.textAlignment = .center
        return temp
    }()
    
    override func addMajorViewComponents() {
        super.addMajorViewComponents()
        addContainerView()
        
    }
    override func setupViewConfigurations() {
        super.setupViewConfigurations()
        addTapGesture()
    }
    private func addContainerView() {
        addSubview(shadowContainer)
        shadowContainer.addSubview(containerView)
        containerView.addSubview(infoTitle)
        
        NSLayoutConstraint.activate([
            
            shadowContainer.leadingAnchor.constraint(equalTo: leadingAnchor),
            shadowContainer.trailingAnchor.constraint(equalTo: trailingAnchor),
            shadowContainer.bottomAnchor.constraint(equalTo: bottomAnchor),
            shadowContainer.topAnchor.constraint(equalTo: topAnchor),
            
            
            containerView.leadingAnchor.constraint(equalTo: shadowContainer.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: shadowContainer.trailingAnchor),
            containerView.bottomAnchor.constraint(equalTo: shadowContainer.bottomAnchor),
            containerView.topAnchor.constraint(equalTo: shadowContainer.topAnchor),
            
            infoTitle.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            infoTitle.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            
        ])
    }
    
    override func loadDataView() {
        super.loadDataView()
        guard let data = returnData() else { return }
        
        infoTitle.text = data.text
        
        switch data.buttonType {
            case .filled(let theme):
                containerView.backgroundColor = theme.value
                infoTitle.textColor = .white
            case .outlined(let theme):
                containerView.layer.borderWidth = 1
                containerView.layer.borderColor = theme.value.cgColor
                containerView.backgroundColor = .white
                infoTitle.textColor = theme.value
        
        }
    
    }
    
    
    func pressedButtonAction() {
        guard let data = returnData() else { return }
        data.actionButtonListener?()
    }
    
    
//    func loadData() {
//        infoTitle.text = data.text
//        switch data.buttonType {
//            case .filled(let theme):
//                containerView.backgroundColor = theme.value
//                infoTitle.textColor = .white
//            case .outlined(let theme):
//                containerView.layer.borderWidth = 1
//                containerView.layer.borderColor = theme.value.cgColor
//                containerView.backgroundColor = .white
//                infoTitle.textColor = theme.value
//        }
//
//
//    }
    
}

extension ActionButton: UIGestureRecognizerDelegate {
    func addTapGesture() {
        let tap = UITapGestureRecognizer(target: self, action: .buttonTappedSelector)
        tap.delegate = self
        addGestureRecognizer(tap)
    }
    
    @objc fileprivate func buttonTapped(_ sender: UITapGestureRecognizer) {
        print("Tap Gesture recognized")
        isUserInteractionEnabled = false
        startTappedAnimation { finish in
            if finish {
                print("Animation Ended")
                self.isUserInteractionEnabled = true
                self.pressedButtonAction()
                //MARK: - delegate method called

//                self.delegate?.actionButtonPressed()
            }
        }
    }
}

fileprivate extension Selector {
    static let buttonTappedSelector = #selector(ActionButton.buttonTapped)
}
