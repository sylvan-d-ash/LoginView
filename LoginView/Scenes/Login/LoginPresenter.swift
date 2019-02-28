//
//  LoginPresenter.swift
//  LoginView
//
//  Created by Sylvan Ash on 22/02/2019.
//  Copyright © 2019 Sylvan Ash. All rights reserved.
//

import Foundation


class LoginPresenter: LoginPresenterProtocol {
    weak var view: LoginViewProtocol!
    var router: LoginRouterProtocol
    private let interactor: LoginInteractorProtocol

    init(view: LoginViewProtocol, interactor: LoginInteractorProtocol, router: LoginRouterProtocol) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }

    func viewDidLoad() {}

    func login(with username: String?, and password: String?) {

        guard let username = username, let password = password else { return }

        // show loading view
        self.view.showLoading()

        self.interactor.login(username: username, password: password) { [weak self] (result) in

            guard let `self` = self else { return }

            // hide loading view
            self.view.hideLoading()

            // process result
            guard result else {
                // if failed, show error
                self.view.showError("Login failed", with: "Login Error")
                return
            }

            // if successful, go to next scene
            self.router.goToNextScene()
        }
    }
}
