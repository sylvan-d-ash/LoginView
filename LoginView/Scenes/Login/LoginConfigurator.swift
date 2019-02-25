//
//  LoginConfigurator.swift
//  LoginView
//
//  Created by Sylvan Ash on 22/02/2019.
//  Copyright © 2019 Sylvan Ash. All rights reserved.
//

import Foundation


class LoginConfigurator: LoginConfiguratorProtocol {
    func configure<T>(viewController: T) {
        
        guard let loginViewController = viewController as? LoginViewController else { return }

        let loginGateway = Webservice()
        let router = LoginRouter()
        let interactor = LoginInteractor(loginGateway: loginGateway)
        let presenter = LoginPresenter(view: loginViewController, interactor: interactor, router: router)

        loginViewController.presenter = presenter
    }
}
