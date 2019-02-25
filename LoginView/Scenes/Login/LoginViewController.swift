//
//  LoginViewController.swift
//  LoginView
//
//  Created by Sylvan Ash on 22/02/2019.
//  Copyright © 2019 Sylvan Ash. All rights reserved.
//

import Foundation
import UIKit


class LoginViewController: UIViewController {

    @IBOutlet private weak var usernameTextfield: UITextField!
    @IBOutlet private weak var passwordTextfield: UITextField!

    var presenter: LoginPresenterProtocol!


    override func viewDidLoad() {
        super.viewDidLoad()

        // configure dependencies
        let configurator = LoginConfigurator()
        configurator.configure(viewController: self)

        // setup UI
        self.setupUI()

        // view did load
        presenter.viewDidLoad()
    }

    @IBAction private func loginButtonTapped(_ sender: Any) {
        self.login()
    }
}


private extension LoginViewController {
    func setupUI() {
        //
    }

    func login() {
        self.presenter.login(with: self.usernameTextfield.text, and: self.passwordTextfield.text)
    }
}


extension LoginViewController: LoginViewProtocol {
    func showLoading() {
        //
    }

    func hideLoading() {
        //
    }

    func showError(_ message: String, with title: String?) {
        self.showAlert(message, with: title)
    }
}
