//
//  LoginConfig.swift
//  LoginView
//
//  Created by Sylvan Ash on 22/02/2019.
//  Copyright © 2019 Sylvan Ash. All rights reserved.
//

import Foundation
import UIKit


class LoginConfig: LoginConfigProtocol {
    var window: UIWindow?
    
    init(window: UIWindow?) {
        self.window = window
    }

    func configure<T: UIViewController>(_ view: T) {
        
        guard let loginViewController = view as? LoginViewController else { return }

        let loginGateway = Webservice()
        let router = LoginRouter(window: self.window)
        let interactor = LoginInteractor(loginGateway: loginGateway)
        let presenter = LoginPresenter(view: loginViewController, interactor: interactor, router: router)

        loginViewController.presenter = presenter
    }
}
