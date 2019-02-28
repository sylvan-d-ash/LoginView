//
//  HomeViewPresenter.swift
//  LoginView
//
//  Created by Sylvan Ash on 01/03/2019.
//  Copyright © 2019 Sylvan Ash. All rights reserved.
//

import Foundation

class HomeViewPresenter: HomeViewPresenterProtocol {
    private weak var view: HomeViewProtocol?

    init(view: HomeViewProtocol) {
        self.view = view
    }

    func viewDidLoad() {
        print("Do stuff on view did load")
    }
}
