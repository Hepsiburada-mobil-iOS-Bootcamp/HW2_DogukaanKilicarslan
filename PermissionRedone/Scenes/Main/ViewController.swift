//
//  ViewController.swift
//  PermissionRedone
//
//  Created by DarkBringer on 27.09.2021.
//

import UIKit

typealias BooleanCompletionBlock = (Bool) -> Void

class ViewController: UIViewController {
    

    private var cameraButton: ActionButton! //This button will be initialized by me later. trust me.
    private var photosButton: ActionButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addActionButton()
        
        //MARK: - delegate methods
//        cameraButton.delegate = self
//        photosButton.delegate = self
        
        
        
    }
    
    lazy var cameraButtonHandler: VoidCompletionBlock = {
        print("cameraButtonPressed")
        let permissionViewController = PermissionViewController()
        self.present(permissionViewController, animated: true) {
            print("PermissionViewController presented")
        }
    }
    lazy var photosButtonHandler: VoidCompletionBlock = {
        print("photosButtonPressed")
    }
    
    private func addActionButton() {
        cameraButton = ActionButton(frame: .zero, data: ActionButtonData(text: "Camera", type: .filled(.smooth)).setActionButtonListener(by: self.cameraButtonHandler))
        cameraButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(cameraButton)
        
        NSLayoutConstraint.activate([
            
            cameraButton.heightAnchor.constraint(equalToConstant: 40),
            cameraButton.widthAnchor.constraint(equalToConstant: 140),
            
            
            cameraButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            cameraButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 450)
            
        ])
        
        photosButton = ActionButton(frame: .zero, data: ActionButtonData(text: "Photos", type: .filled(.bright)).setActionButtonListener(by: photosButtonHandler))
        photosButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(photosButton)
        
        NSLayoutConstraint.activate([
            photosButton.heightAnchor.constraint(equalToConstant: 40),
            photosButton.widthAnchor.constraint(equalToConstant: 140),
            
            photosButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            photosButton.topAnchor.constraint(equalTo: cameraButton.bottomAnchor, constant: 35)
        
        ])
    }
    

}


//MARK: - delegate extension

//extension ViewController: ActionButtonDelegate {
//    func actionButtonPressed() {
//        print("vc is informed")
//    }
//}
