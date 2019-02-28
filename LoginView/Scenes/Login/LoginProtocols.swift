//
//  LoginProtocols.swift
//  LoginView
//
//  Created by Sylvan Ash on 22/02/2019.
//  Copyright © 2019 Sylvan Ash. All rights reserved.
//

import Foundation
import UIKit


// MARK:- Configurator


protocol ConfiguratorProtocol {
    func configure<T: UIViewController>(_ view: T)
}


protocol LoginConfiguratorProtocol: ConfiguratorProtocol {}


// MARK:- Router


protocol LoginRouterProtocol {
    func goToNextScene()
}


// MARK:- Interactor


protocol LoginInteractorProtocol: class {
    typealias LoginInteractorCompletion = (Bool) -> Void
    func login(username: String, password: String, completion: @escaping LoginInteractorCompletion)
}


// MARK:- Presenter


protocol LoginPresenterProtocol {
    func viewDidLoad()
    func login(with username: String?, and password: String?)
}


// MARK:- View


protocol LoginViewProtocol: class {
    var presenter: LoginPresenterProtocol! { get }
    func showLoading()
    func hideLoading()
    func showError(_ message: String, with title: String?)
}
