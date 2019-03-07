//
//  LoginViewSpy.swift
//  LoginViewTests
//
//  Created by Sylvan Ash on 07/03/2019.
//  Copyright © 2019 Sylvan Ash. All rights reserved.
//

import Foundation
@testable import LoginView

class LoginViewSpy: LoginViewProtocol {
    var didCallShowLoading: Bool = false
    var didCallHideLoading: Bool = false
    var didCallShowError: Bool = false
    var errorMessage: String = ""
    var errorTitle: String?

    func showLoading() {
        self.didCallShowLoading = true
    }

    func hideLoading() {
        self.didCallHideLoading = true
    }

    func showError(_ message: String, with title: String?) {
        self.didCallShowError = true
        self.errorMessage = message
        self.errorTitle = title
    }
}
