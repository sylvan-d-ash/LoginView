//
//  LoginRouterSpy.swift
//  LoginViewTests
//
//  Created by Sylvan Ash on 07/03/2019.
//  Copyright © 2019 Sylvan Ash. All rights reserved.
//

import Foundation
@testable import LoginView

class LoginRouterSpy: LoginRouterProtocol {
    var didCallGoToNextScene: Bool = false

    func goToNextScene() {
        self.didCallGoToNextScene = true
    }
}
