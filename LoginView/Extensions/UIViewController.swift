//
//  UIViewController.swift
//  LoginView
//
//  Created by Sylvan Ash on 25/02/2019.
//  Copyright © 2019 Sylvan Ash. All rights reserved.
//

import UIKit

extension UIViewController {
    /**
     Shows a simple alert with a message and possibly a title

     - parameter message: the message to be shown
     - parameter title: the title of the alert message
     */
    func showAlert(_ message: String, with title: String?) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))

        self.present(alert, animated: true, completion: nil)
    }
}
