//
//  ProfileCoordinator.swift
//  Navigation
//
//  Created by gleb on 04/10/2023.
//

import Foundation
import UIKit

class ProfileCoordinator {
    
    let navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func signOut() {
        let loginCoordinator = LoginCoordinator(navigationController: navigationController)
        let vc = LogInViewController(coordinator: loginCoordinator)
        navigationController.pushViewController(vc, animated: true)
    }
    
}
