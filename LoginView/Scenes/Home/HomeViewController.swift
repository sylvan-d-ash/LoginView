//
//  HomeViewController.swift
//  LoginView
//
//  Created by Sylvan Ash on 01/03/2019.
//  Copyright © 2019 Sylvan Ash. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    struct Constants {
        static let storyboard = "Home"
    }

    var presenter: HomeViewPresenterProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.presenter.viewDidLoad()
    }
}


extension HomeViewController: HomeViewProtocol {}
