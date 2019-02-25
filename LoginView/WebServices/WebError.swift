//
//  WebError.swift
//  LoginView
//
//  Created by Sylvan Ash on 25/02/2019.
//  Copyright © 2019 Sylvan Ash. All rights reserved.
//

import Foundation


struct WebError: LocalizedError {
    var errorDescription: String?
    var errorCode: String?

    init(_ message: String = "Unknown Error", code: String = "520") {
        errorDescription = message
        errorCode = code
    }
}
