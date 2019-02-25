//
//  Webservice.swift
//  LoginView
//
//  Created by Sylvan Ash on 24/02/2019.
//  Copyright © 2019 Sylvan Ash. All rights reserved.
//

import Foundation


protocol WebserviceProtocol {
    typealias RequestCompletion = (Any?, Error?) -> Void
    func performApiRequest(endpoint: Any, completion: @escaping RequestCompletion)
}


class Webservice: WebserviceProtocol {
    func performApiRequest(endpoint: Any, completion: @escaping RequestCompletion) {
        completion(nil, nil)
    }
}
