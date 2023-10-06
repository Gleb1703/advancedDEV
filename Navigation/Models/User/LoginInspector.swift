//
//  LoginInspector.swift
//  Navigation
//
//  Created by Created by gleb on 02/10/2023.
//

import Foundation

protocol LoginViewControllerDelegate {

    func check(email: String, password: String) -> Bool

}

struct LoginInspector: LoginViewControllerDelegate {

    func check(email: String, password: String) -> Bool {
        CheckerService.shared.checkCredentials(email: email, password: password)
        if CheckerService.shared.isSignedIn == true {
            return true
        } else {
            return false
        }
    }
}
