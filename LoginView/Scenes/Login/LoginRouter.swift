//
//  LoginRouter.swift
//  LoginView
//
//  Created by Sylvan Ash on 22/02/2019.
//  Copyright © 2019 Sylvan Ash. All rights reserved.
//

import UIKit

class LoginRouter: LoginRouterProtocol {
    var window: UIWindow?
    
    init(window: UIWindow?) {
        self.window = window
    }

    func goToNextScene() {

        // get keyWindow
        guard let window = self.window else {
            assertionFailure("Couldn't find the main window!")
            return
        }

        // get transition view controller
        let storyboard = UIStoryboard(name: HomeViewController.Constants.storyboard, bundle: nil)
        let homeViewController = storyboard.instantiateInitialViewController() as! HomeViewController

        // configure the view
        let configurator = HomeViewConfigurator()
        configurator.configure(homeViewController)

        // transition to the view
        UIView.transition(with: window, duration: 0.5, options: .transitionCrossDissolve, animations: {
            window.rootViewController = homeViewController
        }, completion: nil)
    }
}
