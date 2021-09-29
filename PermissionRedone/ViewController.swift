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
    private var actionModule: ActionModule!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addActionButton()
        addActionModule()
        setupActionModuleData()
//        test(completion: testHandler)
        
        
        //MARK: - delegate methods

//        cameraButton.delegate = self
//        photosButton.delegate = self
        
    }
    
    lazy var testHandler: BooleanCompletionBlock = { value in
        print("finish: \(value)")
    }
 
    lazy var actionButtonHandler: VoidCompletionBlock = {
        print("cameraButtonPressed")
    }
    
    private func addActionButton() {
        
        
        cameraButton = ActionButton(frame: .zero, data: ActionButtonData(text: "Camera", type: .filled(.smooth)).setActionButtonListener(by: self.actionButtonHandler))
        cameraButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(cameraButton)
        
        NSLayoutConstraint.activate([
            
            cameraButton.heightAnchor.constraint(equalToConstant: 40),
            cameraButton.widthAnchor.constraint(equalToConstant: 140),
            
            
            cameraButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            cameraButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 450)
            
        ])
        
        photosButton = ActionButton(frame: .zero, data: ActionButtonData(text: "Photos", type: .filled(.bright)))
        photosButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(photosButton)
        
        NSLayoutConstraint.activate([
            photosButton.heightAnchor.constraint(equalToConstant: 40),
            photosButton.widthAnchor.constraint(equalToConstant: 140),
            
            photosButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            photosButton.topAnchor.constraint(equalTo: cameraButton.bottomAnchor, constant: 35)
        
        ])
    }
    
    private func addActionModule() {
        
        actionModule = ActionModule()
        actionModule.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(actionModule)
        
        NSLayoutConstraint.activate([
            
            actionModule.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            actionModule.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0),
        ])
    }
    
    private func setupActionModuleData() {
        let negative = ActionButtonData(text: "Not Now", type: .outlined(.bright)).setActionButtonListener {
            print("negative fired")
        }
        let positive = ActionButtonData(text: "OK", type: .filled(.smooth)).setActionButtonListener {
            print("positive fired")
        }
        
        actionModule.setData(by: ActionModuleData(negativeButtonData: negative, positiveButtonData: positive))
    }
    
    
    func test(completion: @escaping (Bool) -> Void) {
        print("test fired")
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            completion(true)
        }
    }

}


//MARK: - delegate extension

//extension ViewController: ActionButtonDelegate {
//    func actionButtonPressed() {
//        print("vc is informed")
//    }
//}
