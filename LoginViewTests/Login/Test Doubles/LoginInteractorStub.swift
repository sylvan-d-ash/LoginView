//
//  LoginInteractorStub.swift
//  LoginViewTests
//
//  Created by Sylvan Ash on 07/03/2019.
//  Copyright © 2019 Sylvan Ash. All rights reserved.
//

import Foundation
@testable import LoginView

class LoginInteractorStub: LoginInteractorProtocol {
    var error: Error?
    var result: Any?

    func login(username: String, password: String, completion: @escaping LoginInteractorCompletion) {
        completion(self.result, self.error)
    }
}
