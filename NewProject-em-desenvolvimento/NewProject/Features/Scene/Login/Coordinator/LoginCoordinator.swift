//
//  LoginCoordinator.swift
//  NewProject
//
//  Created by Kleiton Mendes on 13/07/24.
//

import UIKit

enum LoginActions {
    case login
    case registre
    case home
}

protocol LoginCoordinatorProtocol: AnyObject {
    func navigate(to view: LoginActions)
}

final class LoginCoordinator {
    
    private let navigation: UINavigationController
    
    init(navigation: UINavigationController) {
        self.navigation = navigation
    }
}

extension LoginCoordinator: LoginCoordinatorProtocol {
    func navigate(to view: LoginActions) {
        switch view {
        case .login:
            let loginFactory = LoginFactory.make(navigation)
            navigation.pushViewController(loginFactory, animated: true)
        case .registre:
            let registreFactory = RegistreFactory.make(navigation)
//            navigation.modalPresentationStyle = .custom
//            navigation.modalTransitionStyle = .crossDissolve
            navigation.pushViewController(registreFactory, animated: true)
        case .home:
            let homeFactory = HomeFactory.make(navigation)
            navigation.pushViewController(homeFactory, animated: true)
        }
    }
    
}
