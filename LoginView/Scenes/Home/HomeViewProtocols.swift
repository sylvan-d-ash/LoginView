//
//  HomeViewProtocols.swift
//  LoginView
//
//  Created by Sylvan Ash on 01/03/2019.
//  Copyright © 2019 Sylvan Ash. All rights reserved.
//

import Foundation

protocol HomeViewProtocol: class {
    var presenter: HomeViewPresenterProtocol! { get }
}


protocol HomeViewPresenterProtocol {
    func viewDidLoad()
}
