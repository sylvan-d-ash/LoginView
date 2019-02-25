//
//  LoginInteractor.swift
//  LoginView
//
//  Created by Sylvan Ash on 22/02/2019.
//  Copyright © 2019 Sylvan Ash. All rights reserved.
//

import Foundation


class LoginInteractor: LoginInteractorProtocol {
    fileprivate let loginGateway: WebserviceProtocol

    init(loginGateway: WebserviceProtocol) {
        self.loginGateway = loginGateway
    }

    func login(username: String, password: String, completion: @escaping LoginInteractorCompletion) {

        self.loginGateway.performApiRequest(endpoint: "") { [weak self] (json, error) in

            guard let `self` = self else { return }

            // confirm no errors occured
            guard self.checkForErrors(json: json, error: error, completion: completion)
                else { return }

            // login was successful
            completion(true)
        }
    }
}


fileprivate extension LoginInteractor {
    func checkForErrors(json: Any?, error: Error?, completion: @escaping LoginInteractorCompletion) -> Bool {

        // check if we have connectivity
//        guard Connectivity.isConnectedToInternet else {
//            completion(.connectivity)
//            return false
//        }

        // check if we have an api error
//        guard error == nil else {
//            completion(.failure(error!))
//            return false
//        }

        // get dictionary representation of result
//        guard let result = json?.dictionaryObject else {
//            assertionFailure("We should be able to get a dictionary object!")
//            completion(.failure(WebError()))
//            return false
//        }

        // check if response contained `error` info
//        if let errorInfo = result["error"] as? [String: Any] {
//            var error = WebError()
//            if let message = errorInfo["errorKey"] as? String, let code = errorInfo["statusCode"] as? Int {
//                error = WebError(message, code: "\(code)")
//            }
//
//            completion(.failure(error))
//            return false
//        }

        return true
    }
}
