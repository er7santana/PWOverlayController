//
//  ViewController.swift
//  PWOverlayController
//
//  Created by Eliezer Rodrigo on 02/10/19.
//  Copyright © 2019 Shaft Corporation. All rights reserved.
//

import UIKit
import DTOverlayController

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //MARK: - IBActions
    
    @IBAction func showOverlayController(_ sender: Any) {
        
        showOverlayController()
    }
    
    //MARK: - Show Overlay Controller
    
    func showOverlayController() {
        
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "secondViewController")
        
        let overlayController = DTOverlayController(viewController: viewController)

        // View controller is automatically dismissed when you release your finger
        overlayController.dismissableProgress = 0.4

        // Enable/disable pan gesture
        overlayController.isPanGestureEnabled = false

        // Update top-left and top-right corner radius
        overlayController.overlayViewCornerRadius = 20

        // Control the height of the view controller
        overlayController.overlayHeight = .dynamic(0.5) // 80% height of parent controller
//        overlayController.overlayHeight = .static(300) // fixed 300-point height
//        overlayController.overlayHeight = .inset(50) // fixed 50-point inset from top
//
        
        present(overlayController, animated: true, completion: nil)
    }
    
}

