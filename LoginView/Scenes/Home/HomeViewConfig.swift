//
//  HomeViewConfig.swift
//  LoginView
//
//  Created by Sylvan Ash on 01/03/2019.
//  Copyright © 2019 Sylvan Ash. All rights reserved.
//

import UIKit

protocol HomeViewConfigProtocol: ConfigProtocol { }


class HomeViewConfig: HomeViewConfigProtocol {
    func configure<T: UIViewController>(_ view: T) {
        guard let homeViewController = view as? HomeViewController else { return }
        let presenter = HomeViewPresenter(view: homeViewController)
        homeViewController.presenter = presenter
    }
}
